 package com.personal.bio.controller;

//@Controller
//public class FrontendController extends CommonController{
//
//	private static final Logger logger = LoggerFactory.getLogger(FrontendController.class);
//	
//	@Autowired
//	public UserService userService;
//	
//	@Autowired
//	MSG91SMSService msg91smsService;
//	
//	/*
//	 * @Autowired FileUploadServices fileUploadServices;
//	 */
//	
//	@PostMapping(value=URLCONSTANT.LOGIN_PAGE)
//	public ModelAndView loginSubmit(@ModelAttribute UsersDto usersDto , final RedirectAttributes redirectAttributes){
//		if(logger.isTraceEnabled())logger.info("FrontOendCntroller --- loginSubmit --start");
//		ModelAndView model=new ModelAndView("common/login");
//		boolean flag=false;
//		if(StringUtils.isNotEmpty(usersDto.getMobile_no()) && StringUtils.isNotEmpty(usersDto.getPassword())){
//			Users userInfo=userService.getUserByUsernamePassword(usersDto);
//			if(userCheck.test(usersDto)){
//				if(userInfo.isDynamic_status()){
//					redirectAttributes.addFlashAttribute("user",userInfo);
//					model.setViewName("redirect:/sm/dashboard");
//				}else{
//					model.addObject("userId",userInfo.getUserId());
//					model.setViewName("redirect:/dynamic-access-code");
//				
//				}
//			}else{
//				flag=true;
//				model.setViewName("common/login");
//				tri.apply(MESSAGECONSTANT.LOGIN_FAILURE, flag,model);
//			}
//		}else{
//			flag=true;
//			model.setViewName("common/login");
//			tri.apply(MESSAGECONSTANT.LOGIN_EMPTY_FAILURE, flag,model);
//		}
//		if(logger.isTraceEnabled())logger.info("FrontOendCntroller --- loginSubmit --end");
//		return model;
//	}
//	
//	@GetMapping(value=URLCONSTANT.DASHBOARD)
//	public ModelAndView dashboard(Principal principal){
//		ModelAndView model=new ModelAndView();
//		try {
//			Users user=userService.findUserByUserName(principal.getName());
//			model.addObject("user",user);
//			model.setViewName("customer/dashboard");
//			model.addObject("dashActive", true);
//			
//			//create userid folder under webdav
//			//fileUploadServices.createDefaultUserIdFolder(user.getUserId());
//		} catch (Exception e) {
//			e.printStackTrace();
//		}
//		return model;
//	}
//	
//	@GetMapping(value=URLCONSTANT.SIGNUP_PAGE)
//	public ModelAndView signup(@RequestParam(value="message",required=false) String message){
//		if(logger.isTraceEnabled())logger.info("FrontendCntroller --- signup --start");
//		System.out.println("singup");
//		ModelAndView model=new ModelAndView("/signup");
//		model.addObject("message",message);
//		
//		return model;
//	}
//	
//	
//	@PostMapping(value=URLCONSTANT.SIGNUP_PAGE)
//	public ModelAndView signupProcess(@ModelAttribute UsersDto users,HttpServletRequest request){
//		if(logger.isTraceEnabled())
//			logger.info("FrontendCntroller --- signupProcess --start");
//		
//		ModelAndView model=new ModelAndView("/signup");
//		boolean flag=false;
//		if(userCheck.test(users)){
//			System.out.println(users.getFirstname()+"::::"+users.getMobile_no());
//			String dynamicCode=getDynamicCode(); 
//			users.setDynamic_access_code(dynamicCode);
//			boolean smsStatus=msg91smsService.SMSAuthetications(users);
//			Integer userId= userService.saveUser(users,request);
//			if(userIdCheck.test(userId)){
//				userService.updateDynamicCode(dynamicCode,users);
//				if(smsStatus){
//					Email email=new Email();
//					email.setMailto(users.getEmail());
//					//emailSender.sendUserRegisterConformation(users,email, velocityEngine, request);
//					model.setViewName("/dynamic-access-code");
//					model.addObject("userId",userId);
//					tri.apply(MESSAGECONSTANT.ACCOUNT_CREATE_SUCCESS, flag,model);
//					
//					return model;
//				}else{
//					flag=true;
//					model.setViewName("/signup");
//					tri.apply(MESSAGECONSTANT.GENERATED_DAC_FAILURE, flag,model);
//					return model;
//				}
//				//create userid folder under webdav
//				//fileUploadServices.createDefaultUserIdFolder(user.getUserId());
//			}else{
//				flag=true;
//				model.setViewName("/signup");
//				tri.apply(MESSAGECONSTANT.ACCOUNT_CREATE_FAILURE, flag,model);
//				return model;
//			}
//		}
//		return model;
//		
//	}
//	 
//	
//	Predicate<Integer>	userIdCheck= (userId) -> userId!=null;
// 
// 	Predicate<Object>	userCheck= (object) -> Objects.nonNull(object);
//	
// 	TriFunction<String,Boolean,ModelAndView,ModelAndView> tri= (msg,flag,model)->{
// 		
// 		model.addObject("message",msg);
//		model.addObject("flag",flag);
//		return model;
// 		
// 	};
// 	
//	@GetMapping(value=URLCONSTANT.DYNAMIC_ACCESS_CODE)
//	public ModelAndView dynamicAccessCode(@RequestParam Integer userId){
//		if(logger.isTraceEnabled())
//			logger.info("FrontendCntroller --- dynamicAccessCode --start");
//		ModelAndView model=new ModelAndView();
//		boolean flag=false;
//		if(userIdCheck.test(userId)){
//			model.setViewName("/dynamic-access-code");
//			model.addObject("userId",userId);
//		}else{
//			flag=true;
//			model.setViewName("common/login");
//			tri.apply(MESSAGECONSTANT.LOGIN_EMPTY_USER_FAILURE, flag,model);
//		}
//		return model;
//	}
//	
//	
//	@GetMapping(value=URLCONSTANT.RE_GENARATE)
//	public ModelAndView reGenerateDAC(@PathVariable Integer userId){
//		if(logger.isTraceEnabled())
//			logger.info("FrontendCntroller --- reGenerateDAC --start");
//		
//		ModelAndView model=new ModelAndView("/signup");
//		UsersDto users=new UsersDto();
//		Users user=null;
//		boolean flag=false;
//		if(userIdCheck.test(userId)){
//			user=userService.getUserById(userId);
//			String dynamicCode=getDynamicCode();
//			users.setFirstname(user.getFirstname());
//			users.setLastname(user.getLastname());
//			users.setMobile_no(user.getMobile_no());
//			users.setDynamic_access_code(dynamicCode);
//			
//			boolean smsStatus=msg91smsService.SMSAuthetications(users);
//			userService.updateDynamicCode(dynamicCode,users);
//			if(smsStatus){
//				model.setViewName("common/dynamic-access-code");
//				model.addObject("userId",userId);
//				tri.apply(MESSAGECONSTANT.GENERATED_DAC_SUCCESS, flag,model);
//				return model;
//			}else{
//				flag=true;
//				model.setViewName("common/signup");
//				tri.apply(MESSAGECONSTANT.GENERATED_DAC_FAILURE, flag,model);
//				return model;
//			}
//		}
//		return model;
//	}
//	
//	@GetMapping(value=URLCONSTANT.SUBMIT_DAC)
//	public ModelAndView submitDAC(@ModelAttribute UsersDto userDto){
//		if(logger.isTraceEnabled())
//			logger.info("FrontendCntroller --- submitDAC --start");
//		
//		ModelAndView model=new ModelAndView();
//		Users user=null;
//		boolean flag=false;
//		if(StringUtils.isNotBlank(userDto.getDynamic_access_code()) && userDto.getUserId()!=null){
//			user=userService.checkDynamicAccessCode(userDto);
//			if(user!=null){
//				userService.updateUserInfo(userDto);
//				model.setViewName("redirect:/login");
//				tri.apply(MESSAGECONSTANT.ACCOUNT_CREATE_SUCCESS, flag,model);
//			}else{
//				flag=true;
//				model.setViewName("/dynamic-access-code");
//				model.addObject("userId",userDto.getUserId());
//				tri.apply(MESSAGECONSTANT.DAC_CHECK_FAIL, flag,model);
//			}
//		}else{
//			flag=true;
//			model.setViewName("/dynamic-access-code");
//			model.addObject("userId",userDto.getUserId());
//			tri.apply(MESSAGECONSTANT.DAC_NOT_ENTER, flag,model);
//		}
//		if(logger.isTraceEnabled())
//			logger.info("FrontendCntroller --- submitDAC --end");
//		
//		return model;
//	}
//	
//	
//	
//}


@FunctionalInterface
interface TriFunction<T, U,M, R>{
	public  R apply(T t, U u,M m);

}
