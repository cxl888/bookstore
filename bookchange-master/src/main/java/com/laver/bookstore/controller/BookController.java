package com.laver.bookstore.controller;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Set;

import javax.annotation.Resource;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


import com.laver.bookstore.domain.*;
import com.laver.bookstore.service.*;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.laver.bookstore.domain.BookExample.Criteria;


@Controller
public class BookController {
	@Resource 
	private IBookService bookService;
	@Resource
	private IDonateService donateService;

	@Resource
	private IUserService userService;

	@Resource
	private ICommentService commentService;
	
	@RequestMapping("/index")
	public String index(Model model,HttpServletRequest request){
		Set<String> bts=bookService.bookType();
		BookExample example = new BookExample();
		List<Book> books = bookService.selectByExample(example);
		List<Book> Cbooks =getCookies(request);
		model.addAttribute("books", books);
		model.addAttribute("Cbooks", Cbooks);
		model.addAttribute("bts", bts);
		return "front/index";
	}
	
	@RequestMapping("/addBook")
	public ModelAndView addUser(String bname,String detail,String pirce,String type,String writer,String printer,String dateString,String image,Integer store,String provider){
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");  
	    Date date = null;
		try {
			date = sdf.parse(dateString);
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		Book book = new Book();
		book.setBname(bname);
		book.setDetail(detail);
		book.setPirce(pirce);
		book.setType(type);
		book.setWriter(writer);
		book.setPrinter(printer);
		book.setDate(date);
		book.setImage(image);
		book.setStore(store);
		book.setProvider(provider);
		bookService.addBook(book);
		return new ModelAndView("redirect:/manaBook.do");
	}
	
	@RequestMapping("/manaBook")
	public String manaBook(Integer pageNum,Model model){
		if(pageNum!=null){
			PageHelper.startPage(pageNum,com.laver.bookstore.util.Constant.MB_PAGE_SIZE);
		}else{
			PageHelper.startPage(1, com.laver.bookstore.util.Constant.MB_PAGE_SIZE);
		}
		List<Book> books = bookService.findAllBook();
		PageInfo<Book> pageInfo = new PageInfo<Book>(books);
		model.addAttribute("pageInfo", pageInfo);
		model.addAttribute("books", books);
		return "manage/product";
	}
	@RequestMapping("/delBook")
	public ModelAndView deleteUser(Integer bid){
		bookService.delById(bid);
		return new ModelAndView("redirect:/manaBook.do");
	}
	@RequestMapping("/modifyBookPage")
	public String modifyUserPage(Model model,Integer bid){
		Book book = bookService.findById(bid);
		Set<String> bts=bookService.bookType();
		model.addAttribute("bts", bts);
		model.addAttribute("book", book);
		return "manage/product-modify";
	}

	@RequestMapping("/donateBook")
	public String DonateBook(Model model,Integer bid){
		Book book = bookService.findById(bid);
		Set<String> bts=bookService.bookType();
		model.addAttribute("bts", bts);
		model.addAttribute("book", book);
		return "front/donatebook";
	}

	@RequestMapping("/donate")
	public ModelAndView Donate(String bname,String detail,String price,String type,String writer,String printer,String date,String image,String donater,Integer bid){
		Donate Donate = new Donate();
		Donate.setBname(bname);
		Donate.setDetail(detail);
		Donate.setPrice(price);
		Donate.setType(type);
		Donate.setWriter(writer);
		Donate.setPrinter(printer);
		Donate.setDate(date);
		Donate.setImage(image);
		Donate.setDonater(donater);
		donateService.addDonate(Donate);
		userService.donateContribution(donater);
		bookService.delById(bid);
		return new ModelAndView("redirect:/myBook.do");
	}

	@RequestMapping("/addproductPage")
	public String addproductPage(Model model){
		Set<String> bts=bookService.bookType();
		model.addAttribute("bts", bts);
		return "manage/product-add";
	}
	@RequestMapping("/modifyBook")
	public ModelAndView modifyBook(Book book){

		if (book.getImage().equals("")){
			book.setImage(null);
		}
		bookService.modifyBook(book);
		return new ModelAndView("redirect:/manaBook.do");
	}

	@RequestMapping("/manaView")
	public String manaView(Integer bid,Model model){
		Book book=bookService.findById(bid);
		String dateStr=new SimpleDateFormat("yyyy-MM-dd").format(book.getDate());
		//System.out.println(donate.getBname());
		model.addAttribute("book", book);
		model.addAttribute("dateStr", dateStr);
		return "manage/manaView";
	}

	@RequestMapping("/bookView")
	public String bookView(Integer pageNum,Integer bid,Model model,HttpServletRequest request,HttpServletResponse response){
		setCookies(bid, request, response);
		Book book=bookService.findById(bid);
		String dateStr=new SimpleDateFormat("yyyy-MM-dd").format(book.getDate());
		Set<String> bts=bookService.bookType();
		List<Book> Cbooks =getCookies(request);
		if(pageNum!=null){
			PageHelper.startPage(pageNum, com.laver.bookstore.util.Constant.C_PAGE_SIZE);
		}else{
			PageHelper.startPage(1,  com.laver.bookstore.util.Constant.C_PAGE_SIZE);
		}
		List<Comment> comments = commentService.selectBybid(bid);
		PageInfo<Comment> pageInfo = new PageInfo<Comment>(comments);
		model.addAttribute("Cbooks", Cbooks);
		model.addAttribute("bts", bts);
		model.addAttribute("book", book);
		model.addAttribute("dateStr", dateStr);
		model.addAttribute("comments", comments);
		model.addAttribute("pageInfo", pageInfo);
		return "front/product-view";
	}

	@RequestMapping("/productList")
	public String productList(Integer pageNum,Model model,String type,String key,HttpServletRequest request,HttpSession session){
		Set<String> bts=bookService.bookType();
		BookExample example=(BookExample) session.getAttribute("example");
		if(example==null){
			 example = new BookExample();
		}
		if(type!=null){
			example.clear();
			Criteria cri = example.createCriteria();
			cri.andTypeEqualTo(type);
		}
		if(key!=null){
			example.clear();
			Criteria cri = example.createCriteria();
			cri.andBnameLike("%"+key+"%");
		}
		session.setAttribute("example", example);
		if(pageNum!=null){
			PageHelper.startPage(pageNum, com.laver.bookstore.util.Constant.PW_PAGE_SIZE);
		}else{
			PageHelper.startPage(1,  com.laver.bookstore.util.Constant.PW_PAGE_SIZE);
		}
		List<Book> books = bookService.selectByExample(example);
		PageInfo<Book> pageInfo = new PageInfo<Book>(books);
		List<Book> Cbooks =getCookies(request);
		model.addAttribute("Cbooks", Cbooks);
		model.addAttribute("bts", bts);
		model.addAttribute("books", books);
		model.addAttribute("pageInfo", pageInfo);
		return "front/product-list";
	}
	List<Book> getCookies(HttpServletRequest request){
		List<Book> Cbooks =new ArrayList<Book>();
		String list ="";
        //从客户端获得Cookies集合
        Cookie[] cookies = request.getCookies();
        //遍历这个Cookies集合
        if(cookies!=null&&cookies.length>0)
        {
            for(Cookie c:cookies)
            {
                if(c.getName().equals("ListViewCookie"))
                {
                   list = c.getValue();
                }
            }
        }
        if(list!=""){
        	String[] arr = list.split("#");
        	for(String s:arr){
        		Book book = bookService.findById(Integer.parseInt(s));
        		Cbooks.add(book);
        	}
        }
		return Cbooks;
	}
	void setCookies(Integer bid,HttpServletRequest request,HttpServletResponse response){
		boolean flag=true;
		String list ="";
        //从客户端获得Cookies集合
        Cookie[] cookies = request.getCookies();
        //遍历这个Cookies集合
        if(cookies!=null&&cookies.length>0)
        {
            for(Cookie c:cookies)
            {
                if(c.getName().equals("ListViewCookie"))
                {
                   list = c.getValue();
                }
            }
        }
        //如果浏览记录超过1000条，清零.
        String[] arr = list.split("#");
        if(list!=""){
        for(String s:arr){
        	if(Integer.parseInt(s)==bid){
        		flag=false;
        	}
        }
        }
        if(flag){
        	list+=bid+"#";
        }
        if(arr!=null&&arr.length>0)
        {
            if(arr.length>=10)
            {
                list="";
            }
        }
        Cookie cookie = new Cookie("ListViewCookie",list);
        response.addCookie(cookie);
	}
}
