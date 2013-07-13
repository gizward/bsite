puts ' -- pages' 
abstract = <<EOS
EOS
content = <<EOS
<h1>Mike's Home Page</h1>
</p>
<p>
This is the Home Page.</p>
<p>
Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam tristique molestie eros et congue. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Duis pulvinar, neque nec posuere pulvinar, dolor massa dignissim arcu, non dictum libero leo eget libero. Fusce arcu eros, imperdiet a magna ac, porttitor auctor elit. Aenean convallis posuere fringilla. Duis facilisis interdum lectus, non imperdiet metus suscipit ac. Aliquam erat volutpat. Praesent non nunc leo. Suspendisse eget pulvinar velit. Nulla vulputate magna sed arcu imperdiet ultricies. Morbi laoreet vehicula ante, sed eleifend nibh consectetur vel. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae;
</p><p>
Vestibulum posuere non quam eget suscipit. Nunc faucibus magna non vulputate mollis. In rutrum ultricies velit nec tristique. Curabitur felis diam, lacinia vel felis id, hendrerit vestibulum eros. Donec mauris quam, elementum ut eros id, consectetur gravida felis. Sed vehicula lorem eu interdum malesuada. Ut malesuada magna tempor nisl pretium blandit. Phasellus neque risus, cursus sed tincidunt non, aliquet eget eros. Integer in lacus eget nulla consequat condimentum. Sed lacus lacus, vestibulum sed dui eget, accumsan mattis nulla. Aenean leo urna, ornare ac augue laoreet, semper posuere massa. Nulla sit amet suscipit enim, in elementum orci. Nulla lobortis et ante in tincidunt. Vivamus risus erat, egestas nec rhoncus vel, congue vitae magna.
</p>
EOS
styles = <<EOS
EOS
scripts = <<EOS
EOS
Page.create(
  :app_id => nil,
  :user_id => nil,
  :code => 'index',
  :name => 'Index',
  :title => 'home > Index',
  :description => '',
  :abstract => abstract,
  :p_abstract => abstract,
  :content => content,
  :p_content => content,
  :scripts => scripts,
  :p_scripts => scripts,
  :styles => styles,
  :p_styles => styles,
  :app_segment_id => 3,
  :position => 0,
  :published => true,
  :active => true
)
abstract = <<EOS
<h1>Contact me</h1>
EOS
content = <<EOS
<p>
Contact me if you need me and I'll be there for you, I swear!
</p>
<p>
  Address, phone, map, whatever - it can all go here!
</p>
EOS
styles = <<EOS
EOS
scripts = <<EOS
EOS
Page.create(
  :app_id => nil,
  :user_id => nil,
  :code => 'contact',
  :name => 'Contact',
  :title => 'home > Contact',
  :description => '',
  :abstract => abstract,
  :p_abstract => abstract,
  :content => content,
  :p_content => content,
  :scripts => scripts,
  :p_scripts => scripts,
  :styles => styles,
  :p_styles => styles,
  :app_segment_id => 3,
  :position => 0,
  :published => true,
  :active => true
)
abstract = <<EOS
EOS
content = <<EOS
<h1>Mike's School</h1>
Simple introduction to School module.
EOS
styles = <<EOS
EOS
scripts = <<EOS
EOS
Page.create(
  :app_id => nil,
  :user_id => nil,
  :code => 'index',
  :name => 'Index',
  :title => 'school > Index',
  :description => '',
  :abstract => abstract,
  :p_abstract => abstract,
  :content => content,
  :p_content => content,
  :scripts => scripts,
  :p_scripts => scripts,
  :styles => styles,
  :p_styles => styles,
  :app_segment_id => 7,
  :position => 0,
  :published => true,
  :active => true
)
puts ' -- snipplets' 
content = <<EOS
<h1>Mike's Site: <em>Admin Area</em></h1>
EOS
styles = <<EOS
EOS
scripts = <<EOS
EOS
Snipplet.create(
  :app_id => nil,
  :user_id => nil,
  :code => 'header',
  :name => 'Header',
  :title => 'admin > Header',
  :description => '',
  :content => content,
  :p_content => content,
  :scripts => scripts,
  :p_scripts => scripts,
  :styles => styles,
  :p_styles => styles,
  :app_segment_id => 10,
  :position => 0,
  :published => true,
  :active => true
)
content = <<EOS
#USER_INFO# (#USER_ACTIONS#) #USER_MENU#
EOS
styles = <<EOS
EOS
scripts = <<EOS
function replaceStuffForUserbar() {

    var ubar_info      = document.getElementById('user_info');
    var ubar_info_h    = document.getElementById('user_info_hidden');
    var ubar_actions   = document.getElementById('user_actions');
    var ubar_actions_h = document.getElementById('user_actions_hidden');
    var ubar_menu      = document.getElementById('user_menu');
    var ubar_menu_h    = document.getElementById('user_menu_hidden');

    if (ubar_info && ubar_info_h) {
      ubar_info.innerHTML = ubar_info_h.innerHTML;
      ubar_info_h.innerHTML = '';
    } else {
      ubar_info.innerHTML = 'error';
    }

    if (ubar_actions && ubar_actions_h) {
      ubar_actions.innerHTML = ubar_actions_h.innerHTML;
      ubar_actions_h.innerHTML = '';
    }
    if (ubar_menu && ubar_menu_h) {
      ubar_menu.innerHTML = ubar_menu_h.innerHTML;
      ubar_menu_h.innerHTML = '';
    }
}//replaceStuffForUserbar
EOS
Snipplet.create(
  :app_id => nil,
  :user_id => nil,
  :code => 'userbar',
  :name => 'Userbar',
  :title => 'global > Userbar',
  :description => '',
  :content => content,
  :p_content => content,
  :scripts => scripts,
  :p_scripts => scripts,
  :styles => styles,
  :p_styles => styles,
  :app_segment_id => 1,
  :position => 0,
  :published => true,
  :active => true
)
content = <<EOS
<h1>Mike's Site: <em>Login</em></h1>
EOS
styles = <<EOS
EOS
scripts = <<EOS
EOS
Snipplet.create(
  :app_id => nil,
  :user_id => nil,
  :code => 'header',
  :name => 'Header',
  :title => 'auth > Header',
  :description => '',
  :content => content,
  :p_content => content,
  :scripts => scripts,
  :p_scripts => scripts,
  :styles => styles,
  :p_styles => styles,
  :app_segment_id => 8,
  :position => 0,
  :published => true,
  :active => true
)
content = <<EOS
&copy;2012 Michael Buxton
&middot;
Powered by Telateres
EOS
styles = <<EOS
EOS
scripts = <<EOS
EOS
Snipplet.create(
  :app_id => nil,
  :user_id => nil,
  :code => 'credits',
  :name => 'Credits',
  :title => 'global > Credits',
  :description => '',
  :content => content,
  :p_content => content,
  :scripts => scripts,
  :p_scripts => scripts,
  :styles => styles,
  :p_styles => styles,
  :app_segment_id => 1,
  :position => 0,
  :published => true,
  :active => true
)
content = <<EOS
<h1>Mike's Site: <em>Home</em></h1>
EOS
styles = <<EOS
EOS
scripts = <<EOS
EOS
Snipplet.create(
  :app_id => nil,
  :user_id => nil,
  :code => 'header',
  :name => 'Header',
  :title => 'home > Header',
  :description => '',
  :content => content,
  :p_content => content,
  :scripts => scripts,
  :p_scripts => scripts,
  :styles => styles,
  :p_styles => styles,
  :app_segment_id => 3,
  :position => 0,
  :published => true,
  :active => true
)
content = <<EOS
<h1>Mike's Site: <em>School</em></h1>
EOS
styles = <<EOS
EOS
scripts = <<EOS
EOS
Snipplet.create(
  :app_id => nil,
  :user_id => nil,
  :code => 'header',
  :name => 'Header',
  :title => 'school > Header',
  :description => '',
  :content => content,
  :p_content => content,
  :scripts => scripts,
  :p_scripts => scripts,
  :styles => styles,
  :p_styles => styles,
  :app_segment_id => 7,
  :position => 0,
  :published => true,
  :active => true
)
content = <<EOS
<p>
  <a href='/home'>Home</a>
  |
  <a href='/home/contact'>Contact</a>
  |
  <a href='/school'>Courses</a>
</p>
EOS
styles = <<EOS
EOS
scripts = <<EOS
EOS
Snipplet.create(
  :app_id => nil,
  :user_id => nil,
  :code => 'menu1',
  :name => 'Menu1',
  :title => 'web > Menu1',
  :description => '',
  :content => content,
  :p_content => content,
  :scripts => scripts,
  :p_scripts => scripts,
  :styles => styles,
  :p_styles => styles,
  :app_segment_id => 2,
  :position => 0,
  :published => true,
  :active => true
)
content = <<EOS
<h1>Mike's Site: <em>User Control Panel</em></h1>
EOS
styles = <<EOS
EOS
scripts = <<EOS
EOS
Snipplet.create(
  :app_id => nil,
  :user_id => nil,
  :code => 'header',
  :name => 'Header',
  :title => 'user > Header',
  :description => '',
  :content => content,
  :p_content => content,
  :scripts => scripts,
  :p_scripts => scripts,
  :styles => styles,
  :p_styles => styles,
  :app_segment_id => 9,
  :position => 0,
  :published => true,
  :active => true
)
content = <<EOS
<p>
  <a href='/home'>Home</a>
  |
  <a href='/home/contact'>Contact</a>
  |
  <a href='/school'>Courses</a>
</p>
EOS
styles = <<EOS
EOS
scripts = <<EOS
EOS
Snipplet.create(
  :app_id => nil,
  :user_id => nil,
  :code => 'nav1',
  :name => 'Nav1',
  :title => 'web > Nav1',
  :description => '',
  :content => content,
  :p_content => content,
  :scripts => scripts,
  :p_scripts => scripts,
  :styles => styles,
  :p_styles => styles,
  :app_segment_id => 2,
  :position => 0,
  :published => true,
  :active => true
)
puts ' -- css_styles' 
styles = <<EOS
body {}

table#main {
  width: 100%;
}
table#main tr#main_tr {}
table#main td#main_td {
  text-align: center;
}

#wrapper {}
#wrapper_inner {}
#wrapper_inside  {}

/*--------------------*//*custom*/
.error {
  display: inline-block;
  margin: 1px 0px;
  background-color: #900;
  padding: 2px 5px;
  color: #fff;
  box-shadow: 3px 3px 3px #333;
}
.error b {
  font-weight: normal;
  color: #ff0;
}
.todo {
  display: inline-block;
  margin: 1px 0px;
  background-color: #669;
  padding: 2px 5px;
  color: #fff;
  box-shadow: 3px 3px 3px #333;
}
.todo b {
  font-weight: normal;
  color: #cff;
}
EOS
CssStyle.create(
  :app_id=>nil,
  :user_id=>nil,
  :code => 'base',
  :name => 'Base',
  :title => 'admin > Base',
  :description => 'Main admin styles',
  :styles=>styles,
  :p_styles=>styles,
  :app_segment_id=>10,
  :position=>100,
  :published=>true,
  :active=>true
)
styles = <<EOS
#page {
  margin: 20px 20px 0px 240px;
}
#page_inner {
  padding: 0px 0px 40px;
}
#page_inside {}

#after_page {
  clear: both;
}

#page h1,
#page h2,
#page h3,
#page h4,
#page h5,
#page h6 {
  color: #000;
  font-weight: normal;
  margin: 0px 0px 10px;
}
#page h1 {font-size: 24px;}
#page h2 {font-size: 20px;}
#page h3 {font-size: 12px;margin:0px;color:#f00;}
#page h4 {font-size: 14px;}
#page h5 {}
#page h6 {}
  
#page h2 .low {
  color: #999;
}  
  
#page a {
  color: #900;
  text-decoration: underline;
}
#page a.disabled {
  color: #999;
  text-decoration: line-through;
}
#page a.silent {
  color: #000;
  text-decoration: none;
}
#page a:hover {
  color: #f00;
  text-decoration: underline;
}

/*--------------------*//*blocks*/

#page .block {margin: 1px 0px 10px;}
#page .block .title {}
#page .block .content {}
  
#page .block.for_text {}
#page .block.for_text .content {
  border-top: 2px solid #000;
  border-left: 1px solid #000;
  padding: 10px;
}
#page .block.for_text .content .text {
  padding: 10px 20px;
  background-color: #eee;
  border: 1px solid #ddd;
  box-shadow: 1px 1px 1px #666;  
}

#page .block.for_text .content .text.for_pre,
#page .block.for_text .content .text.for_code {
  font-family: monospace;
  font-size: 12px;
}
#page .block.for_text_entry {}
#page .block.for_text_entry .content {
  border-top: 2px solid #000;
  border-left: 1px solid #000;
  padding: 10px;
}
#page .block.for_text_entry .content .text_entry {
 background-color: #eee;
 border: 1px solid #ddd;
 padding: 10px;
 box-shadow: 1px 1px 1px #666;
}
#page .block.for_text_entry .content .text_entry textarea {
  width: 100%;
  padding: 0px;
  margin: 0px;
  background-color: transparent;
}

#page .block.expandable {margin: 1px 0px 0px;}
#page .block.expandable .title {
  padding: 2px 10px;
  color: #000;
  background-color: #999;
  border-top: 1px solid #ddd;
  border-bottom: 1px solid #666;
  cursor: pointer;
}
#page .block.expandable .title:hover,
#page .block.expandable .title.active,
#page .block.expandable .title.active:hover {
  color: #fff;
  background-color: #666;
  border-top: 1px solid #ddd;
  text-shadow: 1px 1px 1px #000;
}
#page .block.expandable .title.active:after,
#page .block.expandable .title.active:hover:after {
  content: " 93 ";
}
#page .block.expandable .content {
  background-color: #ddd;
  border-top: 1px solid #444;
  padding: 10px 20px;
}

/*--------------------*//*tables*/

#page table {
  width: 100%;
  margin: 0px 0px 10px;
  border-top: 2px solid #000;
}
#page table tr {}
#page table th,
#page table td {
  padding: 2px 5px;
}
#page table th, 
#page table td.label {
  color: #000;
  background-color: #ddd;
}
#page table th {
  font-weight: normal;
  border-bottom: 1px solid #000;
}
#page table td.label {
  width: 200px;
  text-align: right;
  font-weight: bold;
  border-right: 1px solid #000;
}
#page table tr.even {
  background-color: #eee;
}

#page table.first,
#page table.next {
  margin-bottom: 0px;
}
#page table.next,
#page table.last {
  border-top: 1px dotted #ccc;
}

#page table.va_middle td {
  vertical-align: middle;
}

#page .pagination {
  text-align: right;
}

/*--------------------*//*forms*/

#page input[type="text"],
#page input[type="email"],
#page input[type="password"] {
  border: 1px solid #eee;
  border-bottom: 1px solid #ccc;
  background-color: #f6f6f6;
  padding: 1px 5px;
  width: 400px;
}
#page input.tiny[type="text"]   {width: 100px;}
#page input.short[type="text"]  {width: 200px;}
#page input.normal[type="text"] {width: 400px;}
#page input.long[type="text"]   {width: 520px;}

#page textarea {
  width: 780px;
  border: none;
  background-color: #f6f6f6;
  padding: 10px;
  border-right: 1px solid #eee;
  border-bottom: 1px solid #eee;
}
#page textarea.code {
  font-family: monospace;
  font-size: 12px;
}
#page input.required {
  border-bottom: 1px solid #cc9;
  background-color: #ffe;
}
#page .form_info {color: #999;}
#page .form_info .required {color: #c00;}

#page .field_with_errors {display: inline}
#page .field_with_errors input,
#page .field_with_errors input.required {
  border-bottom: 1px solid #c99;
  background-color: #fee;
}

/*--------------------*//*tabs*/

#page .tabs {
  margin: 20px 0px 20px;
  padding: 0px 0px 1px;
  font-size: 12px;
  line-height: 16px;
  border: 5px solid #000;
  border-color: #fff #fff #000;
  border-top: none;
}

#page .tabs a {
  margin: 0px;
  padding: 2px 10px;
  color: #000;
  background-color: #ddd;
  text-decoration: none;
}
#page .tabs a:hover {
  color: #fff;
  background-color: #666;
}
#page .tabs a.here,
#page .tabs a.here:hover {
  color: #fff;
  background-color: #000;
}
#page .tabs b {
  font-weight: normal;
  color: #ccc;
}
/*--------------------*//*tabs2*/

#page .tabs2 {
  padding: 0px 20px;
  display: inline-block;
}
#page .tabs2 a {
  margin: 0px;
  padding: 1px 5px 2px;
  color: #666;
  background-color: #ddd;
  text-decoration: none;
}
#page .tabs2 a:hover,
#page .tabs2 a.here,
#page .tabs2 a.here:hover {
  color: #fff;
  background-color: #666;
}

/*--------------------*//*buttons*/

#page .buttons {
  margin: 0px 0px 0px;
  text-align: right;
}
#page .buttons_inner {}

#page .buttons a {
  padding: 2px 5px 3px;
  color: #000;
  background-color: #eee;
  text-decoration: none;
  border-right: 1px solid #ccc;
  border-bottom: 1px solid #ccc;
  
}
#page .buttons a:hover {
  color: #fff;
  border-color: #333;
  background-color: #666;
  /*box-shadow: 1px 1px 3px #666;*/
}
#page .buttons a.large,
#page .buttons a.edit,
#page .buttons a.activate,
#page .buttons a.form_submit,
#page .buttons a.publish {
  font-size: 14px;
  padding: 3px 10px 4px;
  /*border-color: #999;
  background-color: #ddd;*/
}
#page1 .buttons a.new            {background-color:#9ba;color:#063;border-color:#063;}
#page1 .buttons a.new:hover      {background-color:#063;color:#fff;border-color:#ccc;}
#page1 .buttons a.edit           {background-color:#abc;color:#036;border-color:#036;}
#page1 .buttons a.edit:hover     {background-color:#369;color:#fff;border-color:#ccc;}
#page1 .buttons a.form_submit    {background-color:#9ba;color:#063;border-color:#063;}
#page1 .buttons a.activate       {background-color:#9ba;color:#063;border-color:#063;}
#page1 .buttons a.form_submit:hover,
#page1 .buttons a.activate:hover {background-color:#174;color:#fff;border-color:#ccc;}
#page .buttons a.form_cancel       {background-color:#fff;color:#ccc;border-color:#eee;}
#page .buttons a.form_cancel:hover {background-color:#936;color:#fff;}
#page1 .buttons a.disable        {color:#936;}
#page1 .buttons a.disable:hover  {background-color:#936;color:#fff;}
#page1 .buttons a.publish        {background-color:#bac;color:#306;border-color:#306;}
#page1 .buttons a.publish:hover  {background-color:#639;color:#fff;}

/*--------------------*//*other*/

#page .empty {
  font-size: 10px;
  font-family: monospace;
  color: #ccc;
}

/*--------------------*//*error*/

#page #error_explanation {
  margin: 0px 0px 10px;
  border: 1px solid #ecc;
  background-color: #fdd;
  color: #000;
  padding: 10px;
  box-shadow: 1px 1px 3px #999;
  border-radius: 6px;
}
#page #error_explanation h2 {
  font-size: 12px;
  font-weight: bold;
}
#page #error_explanation ul {
  margin: 0px 0px 10px 20px;
}
#page #error_explanation ul li {
  margin: 0px;
  list-style-type: disc;
}
EOS
CssStyle.create(
  :app_id=>nil,
  :user_id=>nil,
  :code => 'page',
  :name => 'Page',
  :title => 'admin > Page',
  :description => '',
  :styles=>styles,
  :p_styles=>styles,
  :app_segment_id=>10,
  :position=>350,
  :published=>true,
  :active=>true
)
styles = <<EOS
.noshow { display: none; }
.debug  {
	display: none; 
	margin: 5px 0px; 
	padding: 5px;
	border: 1px solid #c00;
	background-color: #ffd;
	color: #660;
	font: 10px/14px verdana;
}

/*--------------------*//*text*/
.bold      { font-weight:     bold;      }
.italic    { font-style:      italic;    }
.underline { text-decoration: underline; }
.normal    { font-weight: normal; font-style: normal; text-decoration: none;}

/*--------------------*//*heights*/
.h20px { height: 20px; }
.h30px { height: 30px; }
.h40px { height: 40px; }
.h50px { height: 50px; }
.h100px { height: 100px; }

/*--------------------*//*width-cols*/
.w2c { width: 50%; } /* 2-columns */
.w3c { width: 33%; } /* 3-columns */
.w4c { width: 25%; } /* 4-columns */
.w5c { width: 20%; } /* 5-columns */

/*--------------------*//*width-percent*/
.w10p  { width:  10%; }
.w20p  { width:  20%; }
.w25p  { width:  25%; }
.w30p  { width:  30%; }
.w33p  { width:  33%; }
.w40p  { width:  40%; }
.w50p  { width:  50%; }
.w60p  { width:  60%; }
.w70p  { width:  70%; }
.w80p  { width:  80%; }
.w90p  { width:  90%; }
.w100p { width: 100%; }

/*--------------------*//*width-absolute*/
.w10px  { width:  10px; }
.w20px  { width:  20px; }
.w30px  { width:  30px; }
.w40px  { width:  40px; }
.w50px  { width:  50px; }
.w60px  { width:  60px; }
.w70px  { width:  70px; }
.w80px  { width:  80px; }
.w90px  { width:  90px; }
.w100px { width: 100px; }
.w110px { width: 110px; }
.w120px { width: 120px; }
.w130px { width: 130px; }
.w140px { width: 140px; }
.w150px { width: 150px; }
.w160px { width: 160px; }
.w170px { width: 170px; }
.w180px { width: 180px; }
.w190px { width: 190px; }
.w200px { width: 200px; }
.w210px { width: 210px; }
.w220px { width: 220px; }
.w230px { width: 230px; }
.w240px { width: 240px; }
.w250px { width: 250px; }
.w260px { width: 260px; }
.w270px { width: 270px; }
.w280px { width: 280px; }
.w290px { width: 290px; }
.w300px { width: 300px; }
.w320px { width: 320px; }
.w350px { width: 350px; }
.w360px { width: 360px; }
.w400px { width: 400px; }
.w500px { width: 500px; }
.w600px { width: 600px; }
.w700px { width: 700px; }
.w800px { width: 800px; }

/*--------------------*//*width-content*/
.w-bool      { width: 50px; text-align:center; }
.w-id        { width: 50px;  }
.w-code      { width:100px;  }
.w-number    { width: 60px;  }
.w-amount    { width: 60px;  }
.w-price     { width: 60px;  }
.w-quantity  { width: 60px;  }
.w-count     { width: 60px;  }
.w-date      { width: 80px;  }
.w-owner     { width: 140px; }
.w-name      { width: 140px; }
.w-status    { width: 90px;  text-align:center; }
.w-actions   { width: 140px; }
.w-approvals { width: 130px; }

/*--------------------*//*block-indents*/
.indent10px {padding-left: 10px;}
.indent20px {padding-left: 20px;}
.indent30px {padding-left: 30px;}
.indent40px {padding-left: 40px;}
.indent50px {padding-left: 50px;}
/*--------------------*//*text-align*/
.acenter,  .a-center, .align-center   { text-align: center;  }
.aright,   .a-right,  .align-right    { text-align: right;   }
.aleft,    .a-left,   .align-left     { text-align: left;    }
.ajustify, .a-justify                 { text-align: justify; }

/*--------------------*//*vertical-align*/
.v-top    { vertical-align: top;    }
.v-middle { vertical-align: middle; }
.v-bottom { vertical-align: bottom; }

/*--------------------*//*floats*/
.fleft,  .f-left,  .float-left  { float: left;  }
.fright, .f-right, .float-right { float: right; }
.clear                 { clear: both;  }
.float-left.first      {margin-right: 10px;}
.float-left.next       {margin-right: 10px;}

/*--------------------*//*borders*/
.border-none    { border: none; }
.border-top     { border-top:    1px solid #000; }
.border-left    { border-left:   1px solid #000; }
.border-right   { border-right:  1px solid #000; }
.border-bottom  { border-bottom: 1px solid #000; }
.border-tb      { border-top:    1px solid #000; border-bottom: 1px solid #000; }
.border-lr      { border-left:   1px solid #000; border-right:  1px solid #000; }
.border-tl      { border-top:    1px solid #000; border-left:   1px solid #000; }
.border-br      { border-bottom: 1px solid #000; border-right:  1px solid #000; }

/*--------------------*//*colors*/
.low    { color: #999; }
.black  { color: #000; }
.red    { color: #c00; }
.gray   { color: #999; }
.blue   { color: #00c; }
.brown  { color: #036; }
.green  { color: #070; }
.purple { color: #909; }
.yellow { color: #990; }
.orange { color: #c60; }

.zero     { color: #999; }
.positive { color: #00c; }
.negative { color: #c00; }
.discount { color: #063; }
EOS
CssStyle.create(
  :app_id=>nil,
  :user_id=>nil,
  :code => 'helpers',
  :name => 'Helpers',
  :title => 'global > Helpers',
  :description => '',
  :styles=>styles,
  :p_styles=>styles,
  :app_segment_id=>1,
  :position=>30,
  :published=>true,
  :active=>true
)
styles = <<EOS
/* http://meyerweb.com/eric/tools/css/reset/ 
   v2.0 | 20110126
   License: none (public domain)
*/

html, body, div, span, applet, object, iframe,
h1, h2, h3, h4, h5, h6, p, blockquote, pre,
a, abbr, acronym, address, big, cite, code,
del, dfn, em, img, ins, kbd, q, s, samp,
small, strike, strong, sub, sup, tt, var,
b, u, i, center,
dl, dt, dd, ol, ul, li,
fieldset, form, label, legend,
table, caption, tbody, tfoot, thead, tr, th, td,
article, aside, canvas, details, embed, 
figure, figcaption, footer, header, hgroup, 
menu, nav, output, ruby, section, summary,
time, mark, audio, video {
	margin: 0;
	padding: 0;
	border: 0;
	font-size: 100%;
	font: inherit;
	vertical-align: baseline;
}
/* HTML5 display-role reset for older browsers */
article, aside, details, figcaption, figure, 
footer, header, hgroup, menu, nav, section {
	display: block;
}
body {
	line-height: 1;
}
ol, ul {
	list-style: none;
}
blockquote, q {
	quotes: none;
}
blockquote:before, blockquote:after,
q:before, q:after {
	content: '';
	content: none;
}
table {
	border-collapse: collapse;
	border-spacing: 0;
}
EOS
CssStyle.create(
  :app_id=>nil,
  :user_id=>nil,
  :code => 'reset',
  :name => 'Reset',
  :title => 'global > Reset',
  :description => '',
  :styles=>styles,
  :p_styles=>styles,
  :app_segment_id=>1,
  :position=>10,
  :published=>true,
  :active=>true
)
styles = <<EOS
#navigation {
  display: inline-block;
  width: 200px;
  height: 700px;
  float: left;
  margin: 20px 0px 0px 20px;
  box-shadow: 1px 1px 1px #333;
  background-color: #ccc;
}
#navigation_inner {}
#navigation_inside {}

#navigation li.spacer {
  padding-bottom: 10px;
}

#navigation_title {
  color: #fff;
  background-color: #666;
  text-shadow: 1px 1px 1px #000;
  font-size: 16px;
  padding: 20px;
  text-align: center;
}

#navigation .block {}
#navigation .block .title {
  padding: 2px 10px;
  text-align: left;
  color: #000;
  background-color: #999;
  border-top: 1px solid #ddd;
  border-bottom: 1px solid #666;
  cursor: pointer;
}
#navigation .block.web .title,
#navigation .block.blog .title,
#navigation .block.store .title,
#navigation .block.school .title,
#navigation .block.resources .title,
#navigation .block.admin .title {
  font-weight: bold;
}
#navigation .block .title:hover,
#navigation .block .title.here,
#navigation .block .title.here:hover {
  color: #fff;
  background-color: #666;
  border-top: 1px solid #ddd;
  text-shadow: 1px 1px 1px #000;
}
#navigation .block .title.here,
#navigation .block .title.here:hover {
  text-align: right;
}
#navigation .block .content {
  background-color: #ddd;
  border-top: 1px solid #444;
  padding: 10px;
}
#navigation .block .content a {
  display: inline;
  color: #000;
  text-decoration: none;
  font-size: 14px;
}
#navigation .block .content a:hover {
  font-weight: bold;
}
#navigation .block .content a.here,
#navigation .block .content a.here:hover {
  font-weight: bold;
  text-decoration: underline;
}
#navigation .block .content h6 {
  color: #666;
  font-weight: normal;
  border-bottom: 1px dotted #666;
  text-align: right;
  margin: 10px 0px 0px;
}
#navigation .block .content ul {
  margin: 0px 0px 20px;
}

#navigation .spacer {}
#navigation .ender {
  display: block;
  height: 5px;
  text-align: right;
  background-color: #999;
  border-top: 1px solid #ddd;
  border-bottom: 1px solid #666;
}
EOS
CssStyle.create(
  :app_id=>nil,
  :user_id=>nil,
  :code => 'navigation',
  :name => 'Navigation',
  :title => 'admin > Navigation',
  :description => '',
  :styles=>styles,
  :p_styles=>styles,
  :app_segment_id=>10,
  :position=>200,
  :published=>true,
  :active=>true
)
styles = <<EOS
#header h1 em {
  color: #f00;
}
EOS
CssStyle.create(
  :app_id=>nil,
  :user_id=>nil,
  :code => 'header',
  :name => 'Header',
  :title => 'admin > Header',
  :description => '',
  :styles=>styles,
  :p_styles=>styles,
  :app_segment_id=>10,
  :position=>300,
  :published=>true,
  :active=>true
)
styles = <<EOS
#filters_block {
  margin: 20px 20px 10px 240px;
  text-align: left;
}
#filters_inner {}
#filters_inside {}

#filters_block .block {}
#filters_block .block .title {
  padding: 2px 10px;
  color: #000;
  background-color: #999;
  border-top: 1px solid #ddd;
  border-bottom: 1px solid #666;
  cursor: pointer;
}
#filters_block .block .title:hover,
#filters_block .block .title.active,
#filters_block .block .title.active:hover {
  color: #fff;
  background-color: #666;
  border-top: 1px solid #ddd;
  text-shadow: 1px 1px 1px #000;
}
#filters_block .block .title.active:after,
#filters_block .block .title.active:hover:after {
  content: " 93 ";
}
#filters_block .block .content {
  background-color: #ddd;
  border-top: 1px solid #444;
  padding: 0px;
}

#filters_block table {
  width: 100%;
}
#filters_block table td {
  vertical-align: top;
  padding: 5px 20px;
}
#filters_block table td.right {
  width: 140px;
  border-left: 1px solid #fff;
  background-color: #ccc;
  text-align: right;
}

#filters_block a {
  font-size: 10px;
  padding: 2px 10px;
  background-color: #999;
  border: 1px solid #000;
  border-color: #ccc #666 #666 #ccc;
  margin: 0px;
  color: #000;
  text-decoration: none;
}
#filters_block a.dark {
  color: #999;
  background-color: transparent;
  border-color: #ccc #bbb #bbb #ccc
}
#filters_block a:hover {
  color: #fff;
  background-color: #666;
  border-color: #ccc #000 #000 #ccc;
  text-shadow: 1px 1px 1px #000;
}

#filters_block form {
  margin: 0px;
  padding: 0px;
}
#filters_block form select,
#filters_block form input[type="text"] {
  padding: 1px 5px;
  background-color: #eee;
  border: none;
  border-bottom: 1px solid #ccc;
  color: #000;
  font-size: 10px;
}
#filters_block form input[type="text"] {
  width: 200px;  
}
EOS
CssStyle.create(
  :app_id=>nil,
  :user_id=>nil,
  :code => 'filters',
  :name => 'Filters',
  :title => 'admin > Filters',
  :description => '',
  :styles=>styles,
  :p_styles=>styles,
  :app_segment_id=>10,
  :position=>340,
  :published=>true,
  :active=>true
)
styles = <<EOS
#devbar_actions {
  position: fixed;
  top: 10px;
  right: 10px;
}
#devbar_actions a {
  color: #666;
  text-decoration: none;
}
#admbar_actions a:hover {
  color: #f00;
}

#devbar {
  width: 200px;
  font: 10px/16px verdana;
  text-align: left;

  background-color: #ccc;
  box-shadow: 1px 1px 1px #333;

  position: fixed;
  top: 10px;
  right: 10px;

}
#devbar_inner {}
#devbar_inside {}

#devbar_title {
  color: #fff;
  background-color: #666;
  text-shadow: 1px 1px 1px #000;
  font-size: 16px;
  padding: 0px 0px 20px;
  text-align: center;
}

#devbar_title #actions {
  color: #999;
  display: block;
  padding: 2px 5px 0px;
  text-align: right;
  font-size: 10px;
}
#devbar_title #actions a {
  color: inherit;
  font-weight: bold;
  text-decoration: none;
}
#devbar_title #actions a:hover {
  color: #fff;
}

#devbar .block {}
#devbar .block .title {
  padding: 2px 10px;
  text-align: right;
  color: #000;
  background-color: #999;
  border-top: 1px solid #ddd;
  border-bottom: 1px solid #666;
  cursor: pointer;
}
#devbar .block .title:hover,
#devbar .block .title.active,
#devbar .block .title.active:hover {
  color: #fff;
  background-color: #666;
  border-top: 1px solid #ddd;
  text-shadow: 1px 1px 1px #000;
}
#devbar .block .title.active,
#devbar .block .title.active:hover {
  text-align: left;
}
#devbar .block .content {
  background-color: #ddd;
  border-top: 1px solid #444;
  padding: 10px;
}
#devbar .block .content h6 {
  color: #666;
  font-weight: normal;
  border-bottom: 1px dotted #666;
  text-align: right;
  margin: 10px 0px 0px;
}
#devbar .block .content hr {
  border: none;
  border-top: 1px dotted #666;
  margin: 10px 0px;
}
#devbar .block .content .key {
  display: inline-block;
  width: 100px;
  border-bottom: 1px dotted #999;
}


#devbar .block.todos {}
#devbar .block.todos .title {
  color: #fff;
  background-color: #669;
}
#devbar .block.todos .content {
  color: #006;
  background-color: #99c;
}
#devbar .block.todos .content b {color:#000;}

#devbar .block.warnings {}
#devbar .block.warnings .title {
  color: #fff;
  background-color: #975;
}
#devbar .block.warnings .content {
  color: #630;
  background-color: #ca8;
}
#devbar .block.warnings .content b {color:#000;}

#devbar .block.errors {}
#devbar .block.errors .title {
  color: #fff;
  background-color: #966;
}
#devbar .block.errors .content {
  color: #600;
  background-color: #c99;
}
#devbar .block.errors .content b {color:#000;}

#devbar .spacer {}
#devbar .ender {
  height: 2px;
  text-align: right;
  background-color: #999;
  border-top: 1px solid #eee;
  border-bottom: 1px solid #666;
}

#devbar a {
  color: #900;
  text-decoration: #f00;
}
#devbar a:hover {
  color: #f00;
}
EOS
CssStyle.create(
  :app_id=>nil,
  :user_id=>nil,
  :code => 'dev_bar',
  :name => 'Dev Bar',
  :title => 'override > Dev Bar',
  :description => '',
  :styles=>styles,
  :p_styles=>styles,
  :app_segment_id=>11,
  :position=>10,
  :published=>true,
  :active=>true
)
styles = <<EOS
/*--------------------*//*main*/
table#main {
  width: 100%;
}
table#main tr#main_tr {}
table#main td#main_td {}
  
/*--------------------*//*wrapper*/
#wrapper {}
#wrapper_inner {}
#wrapper_inside {}

/*--------------------*//*layout elements*/
#page {
  padding: 20px 40px 40px;
}
#page_inner {}
#page_inside {}
EOS
CssStyle.create(
  :app_id=>nil,
  :user_id=>nil,
  :code => 'base',
  :name => 'Base',
  :title => 'web > Base',
  :description => '',
  :styles=>styles,
  :p_styles=>styles,
  :app_segment_id=>2,
  :position=>100,
  :published=>true,
  :active=>true
)
styles = <<EOS
/*--------------------*//*main*/
table#main {
  position: fixed;
  top: 0px;
  left: 0px;
  right: 0px;
  bottom: 0px;
  width: 100%;
  height: 100%;
}
table#main tr#main_tr {}
table#main td#main_td {
  padding: 0px 0px 100px;
  text-align: center;
  vertical-align: middle;
}
  
/*--------------------*//*wrapper*/
#wrapper {
  margin: 0px auto;
  text-align: left;
  width: 800px;
  height: 500px;
  min-height: 500px;
  background-color: #fff;
  box-shadow: 1px 1px 1px #333;
  font: 10px/18px verdana;
}
#wrapper_inside {
  padding: 0px;
}

/*--------------------*//*header*/
#header h1 em {
  color: #f90;
}

/*--------------------*//*page*/

#page {
  padding: 20px;
}
#page_inner {}
#page_inside {}

#page h1 {
  font-weight: normal;
  margin: 0px 0px 10px;
  font-size: 24px; 
}

#page a {
  color: #999;
}
#page a:hover {
  color: #f00;
}
/*--------------------*//*form*/
#page .devise_form {
  display: inline-block;
  height: 300px;
  padding: 20px;
  margin: 0px;
  float: left;
  background-color: #eee;
  border: 1px solid #fff;
  box-shadow: 1px 1px 2px #ccc;
}
#page input[type="text"],
#page input[type="email"],
#page input[type="password"] {
  border: 1px solid #fff;
  border-color: #999 #fff #fff #999;
  background-color: #ddd;
  margin: 0px 0px 10px;
  padding: 5px 10px;
  width: 280px;
  font-size: 12px;
  font-family: monospace;
}

/*--------------------*//*buttons*/
#page .buttons {
  margin: 10px 0px 10px;
  text-align: right;
}

/*--------------------*//*actions*/
#page .devise_actions {
  margin-left: 380px;
  padding: 20px 0px 0px;
}
EOS
CssStyle.create(
  :app_id=>nil,
  :user_id=>nil,
  :code => 'base',
  :name => 'Base',
  :title => 'auth > Base',
  :description => '',
  :styles=>styles,
  :p_styles=>styles,
  :app_segment_id=>8,
  :position=>101,
  :published=>true,
  :active=>true
)
styles = <<EOS
EOS
CssStyle.create(
  :app_id=>nil,
  :user_id=>nil,
  :code => 'base',
  :name => 'Base',
  :title => 'home > Base',
  :description => '',
  :styles=>styles,
  :p_styles=>styles,
  :app_segment_id=>3,
  :position=>100,
  :published=>true,
  :active=>true
)
styles = <<EOS
EOS
CssStyle.create(
  :app_id=>nil,
  :user_id=>nil,
  :code => 'base',
  :name => 'Base',
  :title => 'blog > Base',
  :description => '',
  :styles=>styles,
  :p_styles=>styles,
  :app_segment_id=>4,
  :position=>100,
  :published=>false,
  :active=>true
)
styles = <<EOS
EOS
CssStyle.create(
  :app_id=>nil,
  :user_id=>nil,
  :code => 'base',
  :name => 'Base',
  :title => 'forum > Base',
  :description => '',
  :styles=>styles,
  :p_styles=>styles,
  :app_segment_id=>5,
  :position=>100,
  :published=>false,
  :active=>true
)
styles = <<EOS
EOS
CssStyle.create(
  :app_id=>nil,
  :user_id=>nil,
  :code => 'base',
  :name => 'Base',
  :title => 'store > Base',
  :description => '',
  :styles=>styles,
  :p_styles=>styles,
  :app_segment_id=>6,
  :position=>100,
  :published=>false,
  :active=>true
)
styles = <<EOS
EOS
CssStyle.create(
  :app_id=>nil,
  :user_id=>nil,
  :code => 'base',
  :name => 'Base',
  :title => 'school > Base',
  :description => '',
  :styles=>styles,
  :p_styles=>styles,
  :app_segment_id=>7,
  :position=>100,
  :published=>false,
  :active=>true
)
styles = <<EOS
#admbar_actions {
  position: fixed;
  top: 10px;
  left: 10px;
}
#admbar_actions a {
  color: #666;
  text-decoration: none;
}
#admbar_actions a:hover {
  color: #f00;
}

#admbar {
  width: 200px;
  font: 10px/16px verdana;
  text-align: left;

  background-color: #ccc;
  box-shadow: 1px 1px 1px #333;

  position: fixed;
  top: 10px;
  left: 10px;
  x-index: 1;

}
#admbar_inner {}
#admbar_inside {}

#admbar_title {
  color: #fff;
  background-color: #666;
  text-shadow: 1px 1px 1px #000;
  font-size: 16px;
  padding: 0px 0px 20px;
  text-align: center;
}
#admbar_title #actions {
  color: #999;
  display: block;
  padding: 2px 5px 0px;
  text-align: right;
  font-size: 10px;
}
#admbar_title #actions a {
  color: inherit;
  font-weight: bold;
  text-decoration: none;
}
#admbar_title #actions a:hover {
  color: #fff;
}

#admbar .block {}
#admbar .block .title {
  padding: 2px 10px;
  text-align: left;
  color: #000;
  background-color: #999;
  border-top: 1px solid #ddd;
  border-bottom: 1px solid #666;
  cursor: pointer;
}
#admbar .block .title:hover,
#admbar .block .title.active,
#admbar .block .title.active:hover {
  color: #fff;
  background-color: #666;
  border-top: 1px solid #ddd;
  text-shadow: 1px 1px 1px #000;
}
#admbar .block .title.active,
#admbar .block .title.active:hover {
  text-align: right;
}
#admbar .block .content {
  background-color: #ddd;
  border-top: 1px solid #444;
  padding: 10px;
}
#admbar .block .content h6 {
  color: #666;
  font-weight: normal;
  border-bottom: 1px dotted #666;
  text-align: right;
  margin: 10px 0px 0px;
}
#admbar .block .content hr {
  border: none;
  border-top: 1px dotted #666;
  margin: 10px 0px;
}
#admbar .block .content .key {
  display: inline-block;
  width: 100px;
  border-bottom: 1px dotted #999;
}


#admbar .block.todos {}
#admbar .block.todos .title {
  color: #fff;
  background-color: #669;
}
#admbar .block.todos .content {
  color: #006;
  background-color: #99c;
}
#admbar .block.todos .content b {color:#000;}

#admbar .block.warnings {}
#admbar .block.warnings .title {
  color: #fff;
  background-color: #975;
}
#admbar .block.warnings .content {
  color: #630;
  background-color: #ca8;
}
#admbar .block.warnings .content b {color:#000;}

#admbar .block.errors {}
#admbar .block.errors .title {
  color: #fff;
  background-color: #966;
}
#admbar .block.errors .content {
  color: #600;
  background-color: #c99;
}
#admbar .block.errors .content b {color:#000;}

#admbar .spacer {}
#admbar .ender {
  height: 2px;
  text-align: right;
  background-color: #999;
  border-top: 1px solid #eee;
  border-bottom: 1px solid #666;
}

#admbar a {
  color: #900;
  text-decoration: #f00;
}
#admbar a:hover {
  color: #f00;
}
EOS
CssStyle.create(
  :app_id=>nil,
  :user_id=>nil,
  :code => 'adm_bar',
  :name => 'Adm Bar',
  :title => 'override > Adm Bar',
  :description => '',
  :styles=>styles,
  :p_styles=>styles,
  :app_segment_id=>11,
  :position=>20,
  :published=>true,
  :active=>true
)
styles = <<EOS
#userbar { 
  text-align: right; 
  color: #999;
  font: 10px/18px verdana;
}
#userbar .inner {}
#userbar .inside {}

#userbar a {
  color: #666;
  text-decoration: none;
}
#userbar a:hover {
  color: #f00;
  text-decoration: underline;
}
#userbar strong {
  color: #000;
  font-weight: normal;
}

#userbar #user_info,
#userbar #user_actions,
#userbar #user_menu {
  display: inline-block;
}
#userbar #user_menu {
  float: left;
}
EOS
CssStyle.create(
  :app_id=>nil,
  :user_id=>nil,
  :code => 'userbar',
  :name => 'Userbar',
  :title => 'global > Userbar',
  :description => '',
  :styles=>styles,
  :p_styles=>styles,
  :app_segment_id=>1,
  :position=>110,
  :published=>true,
  :active=>true
)
styles = <<EOS
#userbar {
  width: 1220px;
  margin: 0px auto;
}
#userbar_inner {}
#userbar_inside {}
EOS
CssStyle.create(
  :app_id=>nil,
  :user_id=>nil,
  :code => 'userbar',
  :name => 'Userbar',
  :title => 'admin > Userbar',
  :description => '',
  :styles=>styles,
  :p_styles=>styles,
  :app_segment_id=>10,
  :position=>115,
  :published=>true,
  :active=>true
)
styles = <<EOS
#page .role,
#page .status,
#page .appsegment,
#page .boolean_flag {
  font-size: 10px;
  text-transform: lowercase;
  font-variant: small-caps;
  display: inline-block;
  text-align: center;
  line-height: 10px;
  font-weight: bold;
  padding: 0px 0px 2px;
  color: #000;
  background-color: #ccc;
  border: 1px solid #666;
  border-radius: 4px;
  box-shadow: 1px 1px 1px #ccc;
}

#page .role {width:80px;}
#page .status {width:80px;}
#page .appsegment {width:80px;}
#page .boolean_flag {width:50px;}

#page .role.developer,
#page .appsegment.web,
#page .status.new {
  color: #000;
  /*border-color: #657;*/
  background-color: #cbd;
}
#page .appsegment.global,
#page .status.updated {
  color: #000;
  /*border-color: #567;*/
  background-color: #bcd;
}
#page .appsegment.home,
#page .boolean_flag.yes_flag_strong,
#page .status.published_alt {
  color: #000;
  /*border-color: #465;*/
  background-color: #bdc;
}
#page .role.admin,
#page .appsegment.admin,
#page .status.changed,
#page .boolean_flag.no_flag_strong {
  color: #000;
  /*border-color: #756;*/
  background-color: #dbc;
}
#page .appsegment.blog,
#page .appsegment.forum,
#page .appsegment.store,
#page .status.disabled {
  background-color: #fff;
  font-weight: normal;
  color: #999;
  border-color: #ccc;
  box-shadow: 0px 0px 4px #ccc;
}
#page .appsegment.auth {
  color: #000;
  /*border-color: #654;*/
  background-color: #dcb;
}
#page .appsegment.school {
  color: #000;
  /*border-color: #886;*/
  background-color: #ddb;
}

#page .status.new,
#page .status.updated,
#page .status.changed,
#page .boolean_flag.no_flag_strong,
#page .boolean_flag.yes_flag_strong {
  box-shadow: 3px 3px 5px #000;
}
#page .status.new {
  background-color: #00c;
}
#page .status.updated,
#page .status.changed {
  background-color: #c00;
}
#page .status.new,
#page .status.updated,
#page .status.changed {
  color: #fff;
  font-weight: normal
letter-spacing: 1px;
}
EOS
CssStyle.create(
  :app_id=>nil,
  :user_id=>nil,
  :code => 'flags',
  :name => 'Flags',
  :title => 'admin > Flags',
  :description => '',
  :styles=>styles,
  :p_styles=>styles,
  :app_segment_id=>10,
  :position=>360,
  :published=>true,
  :active=>true
)
styles = <<EOS
#credits {
  width: 1220px;
  margin: 10px auto;
  text-align: right;
  color: #999;
}
#credits_inner {}
#credits_inside {}
EOS
CssStyle.create(
  :app_id=>nil,
  :user_id=>nil,
  :code => 'credits',
  :name => 'Credits',
  :title => 'global > Credits',
  :description => '',
  :styles=>styles,
  :p_styles=>styles,
  :app_segment_id=>1,
  :position=>120,
  :published=>true,
  :active=>true
)
styles = <<EOS
/*! normalize.css v2.1.0 | MIT License | git.io/normalize */

/* ==========================================================================
   HTML5 display definitions
   ========================================================================== */

/**
 * Correct `block` display not defined in IE 8/9.
 */

article,
aside,
details,
figcaption,
figure,
footer,
header,
hgroup,
main,
nav,
section,
summary {
    display: block;
}

/**
 * Correct `inline-block` display not defined in IE 8/9.
 */

audio,
canvas,
video {
    display: inline-block;
}

/**
 * Prevent modern browsers from displaying `audio` without controls.
 * Remove excess height in iOS 5 devices.
 */

audio:not([controls]) {
    display: none;
    height: 0;
}

/**
 * Address styling not present in IE 8/9.
 */

[hidden] {
    display: none;
}

/* ==========================================================================
   Base
   ========================================================================== */

/**
 * 1. Set default font family to sans-serif.
 * 2. Prevent iOS text size adjust after orientation change, without disabling
 *    user zoom.
 */

html {
    font-family: sans-serif; /* 1 */
    -webkit-text-size-adjust: 100%; /* 2 */
    -ms-text-size-adjust: 100%; /* 2 */
}

/**
 * Remove default margin.
 */

body {
    margin: 0;
}

/* ==========================================================================
   Links
   ========================================================================== */

/**
 * Address `outline` inconsistency between Chrome and other browsers.
 */

a:focus {
    outline: thin dotted;
}

/**
 * Improve readability when focused and also mouse hovered in all browsers.
 */

a:active,
a:hover {
    outline: 0;
}

/* ==========================================================================
   Typography
   ========================================================================== */

/**
 * Address variable `h1` font-size and margin within `section` and `article`
 * contexts in Firefox 4+, Safari 5, and Chrome.
 */

h1 {
    font-size: 2em;
    margin: 0.67em 0;
}

/**
 * Address styling not present in IE 8/9, Safari 5, and Chrome.
 */

abbr[title] {
    border-bottom: 1px dotted;
}

/**
 * Address style set to `bolder` in Firefox 4+, Safari 5, and Chrome.
 */

b,
strong {
    font-weight: bold;
}

/**
 * Address styling not present in Safari 5 and Chrome.
 */

dfn {
    font-style: italic;
}

/**
 * Address differences between Firefox and other browsers.
 */

hr {
    -moz-box-sizing: content-box;
    box-sizing: content-box;
    height: 0;
}

/**
 * Address styling not present in IE 8/9.
 */

mark {
    background: #ff0;
    color: #000;
}

/**
 * Correct font family set oddly in Safari 5 and Chrome.
 */

code,
kbd,
pre,
samp {
    font-family: monospace, serif;
    font-size: 1em;
}

/**
 * Improve readability of pre-formatted text in all browsers.
 */

pre {
    white-space: pre-wrap;
}

/**
 * Set consistent quote types.
 */

q {
    quotes: "
EOS
CssStyle.create(
  :app_id=>nil,
  :user_id=>nil,
  :code => 'normalize',
  :name => 'Normalize',
  :title => 'global > Normalize',
  :description => '',
  :styles=>styles,
  :p_styles=>styles,
  :app_segment_id=>1,
  :position=>20,
  :published=>true,
  :active=>false
)
styles = <<EOS
#header h1 em {
  color: #0c0;
}
EOS
CssStyle.create(
  :app_id=>nil,
  :user_id=>nil,
  :code => 'header',
  :name => 'Header',
  :title => 'home > Header',
  :description => '',
  :styles=>styles,
  :p_styles=>styles,
  :app_segment_id=>3,
  :position=>300,
  :published=>true,
  :active=>true
)
styles = <<EOS
body {
  background-color: #ccc;
  background: url('/assets/grunge_wall.png');
  padding: 20px;
  margin: 0px;
  text-align: center;
}

#userbar,
#wrapper,
#credits {
  width: 1220px;
  margin: 0px auto;
  font: 10px/18px verdana;
}
#userbar_inner,
#credits_inner {
  padding: 0px 2px 0px 0px;
}

#wrapper {
  text-align: left;
  background-color: #fff;
  box-shadow: 1px 1px 1px #333;
  min-height: 800px;
  box-shadow: 2px 2px 2px #333;
}
EOS
CssStyle.create(
  :app_id=>nil,
  :user_id=>nil,
  :code => 'base',
  :name => 'Base',
  :title => 'global > Base',
  :description => '',
  :styles=>styles,
  :p_styles=>styles,
  :app_segment_id=>1,
  :position=>100,
  :published=>true,
  :active=>true
)
styles = <<EOS
#header {
  color: #fff;
  background-color: #666;
  font-size: 16px;
  padding: 20px;
  margin-bottom: 0px;
  border-bottom: 1px solid #000;
}
#header_inner {}
#header_inside {}

#header h1 {
  font-size: 16px;
  font-weight: normal;
  color: #fff;
  text-shadow: 1px 1px 1px #000;
}
EOS
CssStyle.create(
  :app_id=>nil,
  :user_id=>nil,
  :code => 'header',
  :name => 'Header',
  :title => 'global > Header',
  :description => '',
  :styles=>styles,
  :p_styles=>styles,
  :app_segment_id=>1,
  :position=>300,
  :published=>true,
  :active=>true
)
styles = <<EOS
#header h1 em {
  color: #cc0;
}
EOS
CssStyle.create(
  :app_id=>nil,
  :user_id=>nil,
  :code => 'header',
  :name => 'Header',
  :title => 'school > Header',
  :description => '',
  :styles=>styles,
  :p_styles=>styles,
  :app_segment_id=>7,
  :position=>301,
  :published=>true,
  :active=>true
)
styles = <<EOS
.error {color: #f00;}


#page h1,
#page h2 {
  font-weight: bold;
  margin: 0px 0px 20px;
}
#page h3,
#page h4,
#page h5,
#page h6 {
  font-weight: bold;
  margin: 20px 0px 10px;
}
#page h1 {font-size: 20px;}
#page h2 {font-size: 18px;}
#page h3 {font-size: 16px;}
#page h4 {font-size: 14px;}
#page h5 {font-size: 12px;}
#page h6 {font-size: 10px;}

#page p {
  margin: 0px 0px 10px;
}

#page ul {
  margin: 0px 0px 10px;
  padding: 0px 0px 0px 20px;
}
#page ul li {
  list-style-type: disc;
}

#page b,
#page strong {
  font-weight: bold;
}
#page i,
#page em {
  font-style: italic;
}

#page a {
  color: #00c;
}
#page a:hover {
  color: #f00;
}

#page hr {
  height: 1px;
  width: 100%;
  border: none;
  background-color: transparent;
  border-top: 1px solid #ccc;
  margin: 10px 0px 20px;
}

/*--------------------*//*tables*/
#page table {
  width: 100%;
}
#page table td {
  padding: 5px 10px;
  border-right: 1px solid #ccc;
  border-bottom: 1px solid #ccc;
  vertical-align: top;
}

/*--------------------*//*block*/
#page .block {
  margin: 10px 0px;
  padding: 20px 40px;
  border: 1px solid #fff;
  background-color: #eee;
  box-shadow: 1px 1px 2px #666;
}
#page .block table {
  margin: 20px 0px;
}
#page .block table td {
  padding: 2px 5px;
  border: none;
}
#page .block table td.label {
  width: 150px;
  font-weight: bold;
  text-align: right;
  vertical-align: middle;
}
EOS
CssStyle.create(
  :app_id=>nil,
  :user_id=>nil,
  :code => 'page',
  :name => 'Page',
  :title => 'web > Page',
  :description => '',
  :styles=>styles,
  :p_styles=>styles,
  :app_segment_id=>2,
  :position=>350,
  :published=>true,
  :active=>true
)
styles = <<EOS
/*--------------------*//*course*/
#page .course {}
#page .course .title {
  font-size: 12px;
  font-weight: bold;
}
#page .course .description {
  font-weight: bold;
}
#page .course .abstract {
  padding: 0px 0px 0px 20px;
}
#page .course .links {
  text-align: right;
}


/*--------------------*//*course_details*/
#page .course_details {}
#page .course_details h1 {}
#page .course_details h2 {}
#page .course_details .content {}

/*--------------------*//*enrollment_form*/
#page #enrollment_course_info {
  float: left;
  width: 400px;
}
#page #enrollment_form {
  margin-left: 500px;
}
EOS
CssStyle.create(
  :app_id=>nil,
  :user_id=>nil,
  :code => 'page',
  :name => 'Page',
  :title => 'school > Page',
  :description => '',
  :styles=>styles,
  :p_styles=>styles,
  :app_segment_id=>7,
  :position=>351,
  :published=>true,
  :active=>true
)
styles = <<EOS
#credits {
  width: 800px;
}
EOS
CssStyle.create(
  :app_id=>nil,
  :user_id=>nil,
  :code => 'credits',
  :name => 'Credits',
  :title => 'auth > Credits',
  :description => '',
  :styles=>styles,
  :p_styles=>styles,
  :app_segment_id=>8,
  :position=>121,
  :published=>true,
  :active=>true
)
styles = <<EOS
#header h1 em {
  color: #f0f;
}
EOS
CssStyle.create(
  :app_id=>nil,
  :user_id=>nil,
  :code => 'header',
  :name => 'Header',
  :title => 'user > Header',
  :description => '',
  :styles=>styles,
  :p_styles=>styles,
  :app_segment_id=>9,
  :position=>10,
  :published=>true,
  :active=>true
)
styles = <<EOS
#nav1 {
  margin: 0px 0px 10px;
  background-color: #333;
  color: #666;
  border-top: 1px solid #777;
  font-size: 12px;
}
#nav1 #nav1_inner {
  padding: 2px 20px;
}

#nav1 a {
  color: #ccc;
  text-decoration: none;
}
#nav1 a:hover {
  color: #fff;
  text-decoration: underline;
}
EOS
CssStyle.create(
  :app_id=>nil,
  :user_id=>nil,
  :code => 'nav1',
  :name => 'Nav1',
  :title => 'web > Nav1',
  :description => '',
  :styles=>styles,
  :p_styles=>styles,
  :app_segment_id=>2,
  :position=>110,
  :published=>true,
  :active=>true
)
styles = <<EOS
/*--------------------*//*contact form */
#page #contact_info {
  float: left;
  width: 400px;
}
#page #contact_form {
  margin-left: 500px;
}
EOS
CssStyle.create(
  :app_id=>nil,
  :user_id=>nil,
  :code => 'page',
  :name => 'Page',
  :title => 'home > Page',
  :description => '',
  :styles=>styles,
  :p_styles=>styles,
  :app_segment_id=>3,
  :position=>200,
  :published=>true,
  :active=>true
)
styles = <<EOS
#page form {}
#page textarea,
#page input[type="text"] {
  width: 350px;
  padding: 5px 10px;
  font-size: 12px;
  font-family: monospace;
  background-color: #ddd;
  border: 1px solid #fff;
  border-color: #999 #fff #fff #999;
  color: #090;
}

/*--------------------*//* error_explanation */
#page #error_explanation {
  margin: 10px 0px;
  padding: 20px 40px;
  background-color: #fcc;
  border: 1px solid #fff;
  box-shadow: 1px 1px 2px #666;
  color: #000;
}
#page #error_explanation h2 {
  font-size: 12px;
  margin: 0px;
  color: #c00;
}

#page .field_with_errors textarea,
#page .field_with_errors input {
  background-color: #fcc;
  color: #c00;
}
EOS
CssStyle.create(
  :app_id=>nil,
  :user_id=>nil,
  :code => 'forms',
  :name => 'Forms',
  :title => 'web > Forms',
  :description => '',
  :styles=>styles,
  :p_styles=>styles,
  :app_segment_id=>2,
  :position=>360,
  :published=>true,
  :active=>true
)
puts ' -- js_scripts' 
scripts = <<EOS
// master.js
//------------------------------------------------------------------------------------------------

function element(blockId) {
  return document.getElementById(blockId);
}

function hasClass(ele, cls) {
  return ele.className.match(new RegExp('( |^)' + cls + '( |$)'));
}
function addClass(ele, cls) {
  delim = "";
  if (ele.className.length>0) {delim=" ";}
  if (!this.hasClass(ele, cls)) ele.className += delim + cls;
}
function removeClass(ele, cls) {
  if (hasClass(ele, cls)) {
    var reg = new RegExp('( |^)' + cls + '( |$)');
    ele.className = ele.className.replace(reg, ' ');
  }
}

//------------------------------------------------------------------------------------------------

function showElement(blockId) {
  var block = element(blockId);
  var currently_hidden = hasClass(block,'noshow');
  if (currently_hidden) {
    removeClass(block,'noshow')
  }
}

function hideElement(blockId) {
  var block = element(blockId);
  var currently_hidden = hasClass(block,'noshow');
  if (!currently_hidden) {
    addClass(block,'noshow')
  }
}

function flipElement(blockId) {
  var block   = element(blockId);
  var block_h = element(blockId+"_h");
  var currently_hidden = hasClass(block,'noshow');
  if (currently_hidden) {
    removeClass(block,'noshow');
    if (block_h) {addClass(block_h,'active');}
  } else {
    addClass(block,'noshow')
    if (block_h) {removeClass(block_h,'active');}
  }
}

function flipBlock(blockId) {
  var block   = element(blockId);
  var block_t = element(blockId+'_t');
  var currently_hidden = hasClass(block,'noshow');
  if (currently_hidden) {
    removeClass(block,'noshow')
    if (block_t) {removeClass(block_t,'closed')}
  } else {
    addClass(block,'noshow')
    if (block_t) {addClass(block_t,'closed')}
  }
}
//------------------------------------------------------------------------------------------------
//------------------------------------------------------------------------------------------------

function goTo(curId,arr) {
  for (x in arr) {
    var cId = arr[x];
    var block = element(cId);
    var block_a = element(cId+'_a');
    if (block != null && block_a != null) {
      removeClass(block_a,'here');
    addClass(block,'noshow');
    }
  }
  var block = element(curId);
  var block_a = element(curId+'_a');
  var block_aa = element(curId+'_aa');
  addClass(block_a,'here');
  removeClass(block,'noshow');
}

//------------------------------------------------------------------------------------------------

var tabs_array = ['tab_00','tab_01','tab_02','tab_03','tab_04','tab_05',
  'tab_06','tab_07','tab_08','tab_09','tab_10','tab_11','tab_12']
function changeTab(curId) {
  for (x in tabs_array) {
    var cId = tabs_array[x];
    var block = element(cId);
    var block_a = element(cId+'_a');
    var block_aa = element(cId+'_aa');
    if (block != null && block_a != null) {
      removeClass(block_a,'here');
	    if (block_aa != null) {removeClass(block_aa,'here');} // secondary tabs
    addClass(block,'noshow');
    }
  }
  var block = element(curId);
  var block_a = element(curId+'_a');
  var block_aa = element(curId+'_aa');
  addClass(block_a,'here');
  if (block_aa != null) {addClass(block_aa,'here');} // secondary tabs
  removeClass(block,'noshow');
}
var tabs1_array = ['tab1_00','tab1_01','tab1_02','tab1_03','tab1_04',
  'tab1_05','tab1_06','tab1_07','tab1_08','tab1_09','tab1_10','tab1_11','tab1_12']
function changeTab1(curId) {
  for (x in tabs1_array) {
    var cId = tabs1_array[x];
    var block = element(cId);
    var block_a = element(cId+'_a');
    var block_aa = element(cId+'_aa');
    if (block != null && block_a != null) {
      removeClass(block_a,'here');
	    if (block_aa != null) {removeClass(block_aa,'here');} // secondary tabs
    addClass(block,'noshow');
    }
  }
  var block = element(curId);
  var block_a = element(curId+'_a');
  var block_aa = element(curId+'_aa');
  addClass(block_a,'here');
  if (block_aa != null) {addClass(block_aa,'here');} // secondary tabs
  removeClass(block,'noshow');
}
var tabs2_array = ['tab2_00','tab2_01','tab2_02','tab2_03','tab2_04',
  'tab2_05','tab2_06','tab2_07','tab2_08','tab2_09','tab2_10','tab2_11','tab2_12']
function changeTab2(curId) {
  for (x in tabs2_array) {
    var cId = tabs2_array[x];
    var block = element(cId);
    var block_a = element(cId+'_a');
    var block_aa = element(cId+'_aa');
    if (block != null && block_a != null) {
      removeClass(block_a,'here');
	    if (block_aa != null) {removeClass(block_aa,'here');} // secondary tabs
    addClass(block,'noshow');
    }
  }
  var block = element(curId);
  var block_a = element(curId+'_a');
  var block_aa = element(curId+'_aa');
  addClass(block_a,'here');
  if (block_aa != null) {addClass(block_aa,'here');} // secondary tabs
  removeClass(block,'noshow');
}
var tabs3_array = ['tab3_00','tab3_01','tab3_02','tab3_03','tab3_04','tab3_05',
  'tab3_06','tab3_07','tab3_08','tab3_09','tab3_10','tab3_11','tab3_12']
function changeTab3(curId) {
  for (x in tabs3_array) {
    var cId = tabs3_array[x];
    var block = element(cId);
    var block_a = element(cId+'_a');
    var block_aa = element(cId+'_aa');
    if (block != null && block_a != null) {
      removeClass(block_a,'here');
	    if (block_aa != null) {removeClass(block_aa,'here');} // secondary tabs
    addClass(block,'noshow');
    }
  }
  var block = element(curId);
  var block_a = element(curId+'_a');
  var block_aa = element(curId+'_aa');
  addClass(block_a,'here');
  if (block_aa != null) {addClass(block_aa,'here');} // secondary tabs
  removeClass(block,'noshow');
}

//------------------------------------------------------------------------------------------------

var menus_array = ['menu_00','menu_01','menu_02','menu_03','menu_04','menu_05',
  'menu_06','menu_07','menu_08','menu_09','menu_10','menu_11','menu_12']
function changeMenu(curId) {
  for (x in menus_array) {
    var cId = menus_array[x];
    var block = element(cId);
    var block_h = element(cId+'_h');
    if (block != null && block_h != null) {
      removeClass(block_h,'here');
    addClass(block,'noshow');
    }
  }
  var block = element(curId);
  var block_h = element(curId+'_h');
  addClass(block_h,'here');
  removeClass(block,'noshow');
}

//------------------------------------------------------------------------------------------------
// eof - master.js
EOS
JsScript.create(
  :app_id => nil,
  :user_id => nil,
  :code => 'master',
  :name => 'Master',
  :title => 'global > Master',
  :description => '',
  :scripts => scripts,
  :p_scripts => scripts,
  :app_segment_id => 1,
  :position => 0,
  :published => true,
  :active => false
)
scripts = <<EOS
function replaceStuffForUserbar {

    var ubar_info      = document.getElementById('userbar_info');
    var ubar_info_h    = document.getElementById('userbar_info_hidden');
    var ubar_actions   = document.getElementById('userbar_actions');
    var ubar_actions_h = document.getElementById('userbar_actions_hidden');
    var ubar_menu      = document.getElementById('userbar_menu');
    var ubar_menu_h    = document.getElementById('userbar_menu_hidden');

    if (ubar_info && ubar_info_h) {
      ubar_info.innerHTML = ubar_info_h.innerHTML;
      ubar_info_h.innerHTML = '';
    }
    if (ubar_actions && ubar_actions_h) {
      ubar_actions.innerHTML = ubar_actions_h.innerHTML;
      ubar_actions_h.innerHTML = '';
    }
    if (ubar_menu && ubar_menu_h) {
      ubar_menu.innerHTML = ubar_menu_h.innerHTML;
      ubar_menu_h.innerHTML = '';
    }
}//replaceStuffForUserbar
EOS
JsScript.create(
  :app_id => nil,
  :user_id => nil,
  :code => 'replacer',
  :name => 'Replacer',
  :title => 'global > Replacer',
  :description => '',
  :scripts => scripts,
  :p_scripts => scripts,
  :app_segment_id => 1,
  :position => 100,
  :published => true,
  :active => false
)
puts ' -- courses' 
abstract = <<EOS
<p>
Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean vehicula vestibulum mi, nec porta elit fermentum quis. Fusce vel libero eu arcu rhoncus dignissim condimentum eu tellus. Morbi enim elit, gravida vitae massa ut, pulvinar tristique orci. Praesent accumsan orci sed augue dignissim luctus. Donec non ultrices massa. Donec a ipsum et lorem faucibus vehicula a eget neque. Praesent cursus risus nibh, et gravida sapien lobortis sed. Nulla hendrerit posuere diam, porta volutpat massa viverra vel. Etiam ultrices nibh leo, iaculis bibendum diam posuere quis. Nullam fringilla libero ac consequat tincidunt.</p>
EOS
content = <<EOS
<p>
Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean vehicula vestibulum mi, nec porta elit fermentum quis. Fusce vel libero eu arcu rhoncus dignissim condimentum eu tellus. Morbi enim elit, gravida vitae massa ut, pulvinar tristique orci. Praesent accumsan orci sed augue dignissim luctus. Donec non ultrices massa. Donec a ipsum et lorem faucibus vehicula a eget neque. Praesent cursus risus nibh, et gravida sapien lobortis sed. Nulla hendrerit posuere diam, porta volutpat massa viverra vel. Etiam ultrices nibh leo, iaculis bibendum diam posuere quis. Nullam fringilla libero ac consequat tincidunt.
</p><p>
Ut pretium massa nec elit aliquet suscipit. Nulla lacinia dignissim lacus, id tincidunt nunc. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Aliquam luctus eros tellus, at ultrices ligula lacinia a. Etiam consequat, enim non imperdiet aliquet, lorem mauris luctus sem, sit amet adipiscing felis turpis at enim. Praesent eros odio, rutrum sed auctor ut, consectetur id neque. Nullam ultrices urna libero, id molestie ipsum dignissim in. In tempus dignissim varius. Fusce venenatis, est vitae vulputate ultricies, velit sapien gravida leo, vitae egestas est risus id diam. Fusce ullamcorper sed purus sit amet tincidunt. Sed blandit ut lectus nec vulputate.
</p><p>
Etiam aliquet ornare lacus, vel vestibulum magna porta quis. Duis sodales vestibulum augue, ut sodales risus imperdiet in. Duis ac nibh ultricies, viverra odio ac, convallis lacus. Curabitur sit amet velit ac nunc auctor eleifend. Donec vitae quam ut quam laoreet placerat. Etiam tristique, felis ac gravida laoreet, eros quam fringilla ipsum, nec venenatis orci sapien fringilla nisi. Sed mattis, massa at gravida tristique, sem nulla gravida lectus, sed dictum neque massa eu massa. Praesent nec tellus nulla. Donec imperdiet accumsan sapien. Morbi eget arcu accumsan, molestie felis ut, pretium urna. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.
</p>
EOS
Course.create(
  :app_id => nil,
  :user_id => nil,
  :code => 'first',
  :name => 'First Course',
  :title => 'First Course',
  :description => 'Very important course with very important certificate',
  :abstract => abstract,
  :p_abstract => abstract,
  :content => content,
  :p_content => content,
  :position => 0,
  :published => true,
  :active => true
)
abstract = <<EOS
<p>
Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur id ultricies sapien. Curabitur vel ornare odio. Integer dictum auctor ligula, ac venenatis metus consectetur vitae. Maecenas non enim sit amet nulla bibendum adipiscing quis quis lectus. Phasellus nec vehicula turpis, eget hendrerit magna. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Nunc imperdiet diam eget neque tincidunt imperdiet. Mauris vestibulum risus risus, vitae ullamcorper elit pretium non. Vivamus eget feugiat tellus, nec aliquet metus.</p>
EOS
content = <<EOS
<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur id ultricies sapien. Curabitur vel ornare odio. Integer dictum auctor ligula, ac venenatis metus consectetur vitae. Maecenas non enim sit amet nulla bibendum adipiscing quis quis lectus. Phasellus nec vehicula turpis, eget hendrerit magna. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Nunc imperdiet diam eget neque tincidunt imperdiet. Mauris vestibulum risus risus, vitae ullamcorper elit pretium non. Vivamus eget feugiat tellus, nec aliquet metus.
</p><p>
Morbi at magna enim. Nunc hendrerit ultrices ultricies. Quisque vel velit vitae ligula eleifend fermentum id non metus. Aenean nec vulputate lacus, vel placerat augue. Proin pellentesque purus sit amet purus luctus tempor. Donec tincidunt vel odio eu consectetur. Phasellus suscipit cursus eros, ut porta neque pellentesque eget. Etiam eu tempus mauris, quis placerat augue. Pellentesque at accumsan augue. Nulla ut mauris diam. Nam lobortis fermentum laoreet. Donec sed erat interdum, scelerisque elit id, facilisis odio. Nunc consectetur sodales neque, eu laoreet dolor pretium ut. Proin porta bibendum condimentum.
</p><p>

Duis ornare neque ut venenatis pellentesque. Vivamus id ante sit amet magna varius mattis ut eget eros. Sed non pulvinar mauris. Aliquam at dapibus nibh. Mauris bibendum euismod justo, eu dapibus quam congue vel. Nulla facilisi. Nulla erat enim, tincidunt ut tristique ac, volutpat sit amet quam. Vestibulum ultrices libero eu leo feugiat, vel hendrerit metus molestie. Pellentesque viverra, metus in luctus fermentum, est augue vehicula lorem, interdum aliquet purus magna sit amet leo. Suspendisse potenti. Nunc suscipit iaculis sollicitudin.

</p><p>
Nam tincidunt, quam egestas sollicitudin consequat, lectus velit ultricies odio, sit amet volutpat libero est ac libero. Curabitur condimentum lacinia ipsum id tincidunt. Vestibulum a sodales magna. Nam quis lacus in tellus aliquet malesuada. Nulla commodo enim justo, vel venenatis dolor lacinia eu. Morbi scelerisque ipsum augue, sit amet mattis ligula vulputate eu. Morbi est risus, faucibus nec neque eu, condimentum sagittis felis. Curabitur sit amet convallis leo. In hac habitasse platea dictumst. Vivamus dapibus malesuada quam. Pellentesque id ante nisi. In sed felis ac neque commodo pretium. Aenean id leo fermentum, tincidunt turpis vel, cursus risus. Suspendisse arcu elit, mollis a erat ac, blandit aliquam eros.

</p><p>
Cras egestas pellentesque enim rhoncus facilisis. Quisque pellentesque ultricies elit at auctor. Quisque condimentum eros odio, a aliquet risus bibendum congue. Maecenas sit amet blandit justo. Proin nibh dui, blandit at laoreet eu, aliquet nec augue. Nam cursus porta cursus. Fusce viverra gravida venenatis. Nullam eleifend mauris sed libero congue, quis euismod magna dignissim. Donec in odio a neque tincidunt euismod non id mi. Donec a ullamcorper odio, vel venenatis lorem.</p>
EOS
Course.create(
  :app_id => nil,
  :user_id => nil,
  :code => 'second',
  :name => 'Second Course',
  :title => 'Second Course',
  :description => 'This is just another little course for little.',
  :abstract => abstract,
  :p_abstract => abstract,
  :content => content,
  :p_content => content,
  :position => 0,
  :published => true,
  :active => true
)
puts ' -- lectures' 
abstract = <<EOS
<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean vehicula vestibulum mi, nec porta elit fermentum quis. Fusce vel libero eu arcu rhoncus dignissim condimentum eu tellus. Morbi enim elit, gravida vitae massa ut, pulvinar tristique orci. Praesent accumsan orci sed augue dignissim luctus. Donec non ultrices massa. Donec a ipsum et lorem faucibus vehicula a eget neque. Praesent cursus risus nibh, et gravida sapien lobortis sed. Nulla hendrerit posuere diam, porta volutpat massa viverra vel. Etiam ultrices nibh leo, iaculis bibendum diam posuere quis. Nullam fringilla libero ac consequat tincidunt.
</p>
EOS
content = <<EOS
<p>
Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean vehicula vestibulum mi, nec porta elit fermentum quis. Fusce vel libero eu arcu rhoncus dignissim condimentum eu tellus. Morbi enim elit, gravida vitae massa ut, pulvinar tristique orci. Praesent accumsan orci sed augue dignissim luctus. Donec non ultrices massa. Donec a ipsum et lorem faucibus vehicula a eget neque. Praesent cursus risus nibh, et gravida sapien lobortis sed. Nulla hendrerit posuere diam, porta volutpat massa viverra vel. Etiam ultrices nibh leo, iaculis bibendum diam posuere quis. Nullam fringilla libero ac consequat tincidunt.
</p><p>
Ut pretium massa nec elit aliquet suscipit. Nulla lacinia dignissim lacus, id tincidunt nunc. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Aliquam luctus eros tellus, at ultrices ligula lacinia a. Etiam consequat, enim non imperdiet aliquet, lorem mauris luctus sem, sit amet adipiscing felis turpis at enim. Praesent eros odio, rutrum sed auctor ut, consectetur id neque. Nullam ultrices urna libero, id molestie ipsum dignissim in. In tempus dignissim varius. Fusce venenatis, est vitae vulputate ultricies, velit sapien gravida leo, vitae egestas est risus id diam. Fusce ullamcorper sed purus sit amet tincidunt. Sed blandit ut lectus nec vulputate.
</p><p>
Etiam aliquet ornare lacus, vel vestibulum magna porta quis. Duis sodales vestibulum augue, ut sodales risus imperdiet in. Duis ac nibh ultricies, viverra odio ac, convallis lacus. Curabitur sit amet velit ac nunc auctor eleifend. Donec vitae quam ut quam laoreet placerat. Etiam tristique, felis ac gravida laoreet, eros quam fringilla ipsum, nec venenatis orci sapien fringilla nisi. Sed mattis, massa at gravida tristique, sem nulla gravida lectus, sed dictum neque massa eu massa. Praesent nec tellus nulla. Donec imperdiet accumsan sapien. Morbi eget arcu accumsan, molestie felis ut, pretium urna. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.
</p><p>
Nam facilisis neque at turpis varius volutpat. Vestibulum orci lacus, adipiscing sit amet mi vel, elementum suscipit tortor. Nullam volutpat elit urna, blandit commodo ipsum consectetur eget. Integer eget odio luctus, vulputate risus ut, vestibulum risus. Sed nunc lacus, consectetur sed urna eget, porta posuere dolor. Curabitur bibendum elit ligula, a cursus orci bibendum ac. Quisque faucibus pretium enim. Curabitur ornare scelerisque felis sit amet auctor. Vivamus in massa enim. Nullam mi erat, tempor et felis at, commodo tincidunt augue.
</p><p>
Fusce faucibus ultricies tellus, sit amet pulvinar nulla tincidunt ac. Sed sed porta ligula. Praesent cursus nibh laoreet suscipit commodo. Integer dictum in neque quis luctus. Cras ac tortor quis est volutpat tristique. Praesent aliquam augue et pulvinar porttitor. Nullam ut massa non dui pellentesque congue. Aliquam at metus non leo convallis tristique. Aenean vulputate lacus at suscipit pellentesque. Aenean consequat, magna vitae tempus tempus, elit odio sodales enim, et aliquet libero nisi eget urna. In fringilla neque ut varius feugiat. Etiam nulla ipsum, eleifend non neque et, euismod vestibulum orci. Proin volutpat vestibulum leo ac molestie. Cras non ornare velit, sed eleifend enim.
</p>
EOS
Lecture.create(
  :course_id => 1,
  :app_id => nil,
  :user_id => nil,
  :code => 'lecture_1',
  :name => 'Lecture 1',
  :title => 'Introduction',
  :description => 'Introduction to the very important stuff',
  :abstract => abstract,
  :p_abstract => abstract,
  :content => content,
  :p_content => content,
  :position => 10,
  :published => true,
  :active => true
)
abstract = <<EOS
<p>Ut pretium massa nec elit aliquet suscipit. Nulla lacinia dignissim lacus, id tincidunt nunc. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Aliquam luctus eros tellus, at ultrices ligula lacinia a. Etiam consequat, enim non imperdiet aliquet, lorem mauris luctus sem, sit amet adipiscing felis turpis at enim. Praesent eros odio, rutrum sed auctor ut, consectetur id neque. Nullam ultrices urna libero, id molestie ipsum dignissim in. In tempus dignissim varius. Fusce venenatis, est vitae vulputate ultricies, velit sapien gravida leo, vitae egestas est risus id diam. Fusce ullamcorper sed purus sit amet tincidunt. Sed blandit ut lectus nec vulputate.</p>
EOS
content = <<EOS
<p>Ut pretium massa nec elit aliquet suscipit. Nulla lacinia dignissim lacus, id tincidunt nunc. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Aliquam luctus eros tellus, at ultrices ligula lacinia a. Etiam consequat, enim non imperdiet aliquet, lorem mauris luctus sem, sit amet adipiscing felis turpis at enim. Praesent eros odio, rutrum sed auctor ut, consectetur id neque. Nullam ultrices urna libero, id molestie ipsum dignissim in. In tempus dignissim varius. Fusce venenatis, est vitae vulputate ultricies, velit sapien gravida leo, vitae egestas est risus id diam. Fusce ullamcorper sed purus sit amet tincidunt. Sed blandit ut lectus nec vulputate.
</p><p>
Etiam aliquet ornare lacus, vel vestibulum magna porta quis. Duis sodales vestibulum augue, ut sodales risus imperdiet in. Duis ac nibh ultricies, viverra odio ac, convallis lacus. Curabitur sit amet velit ac nunc auctor eleifend. Donec vitae quam ut quam laoreet placerat. Etiam tristique, felis ac gravida laoreet, eros quam fringilla ipsum, nec venenatis orci sapien fringilla nisi. Sed mattis, massa at gravida tristique, sem nulla gravida lectus, sed dictum neque massa eu massa. Praesent nec tellus nulla. Donec imperdiet accumsan sapien. Morbi eget arcu accumsan, molestie felis ut, pretium urna. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.</p>
EOS
Lecture.create(
  :course_id => 1,
  :app_id => nil,
  :user_id => nil,
  :code => 'lecture_2',
  :name => 'lecture 2',
  :title => 'The Basics',
  :description => 'Basically some more introduction to the very important stuff',
  :abstract => abstract,
  :p_abstract => abstract,
  :content => content,
  :p_content => content,
  :position => 20,
  :published => true,
  :active => true
)
abstract = <<EOS
<p>
Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur id ultricies sapien. Curabitur vel ornare odio. Integer dictum auctor ligula, ac venenatis metus consectetur vitae. Maecenas non enim sit amet nulla bibendum adipiscing quis quis lectus. Phasellus nec vehicula turpis, eget hendrerit magna. </p>
EOS
content = <<EOS
<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur id ultricies sapien. Curabitur vel ornare odio. Integer dictum auctor ligula, ac venenatis metus consectetur vitae. Maecenas non enim sit amet nulla bibendum adipiscing quis quis lectus. Phasellus nec vehicula turpis, eget hendrerit magna. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Nunc imperdiet diam eget neque tincidunt imperdiet. Mauris vestibulum risus risus, vitae ullamcorper elit pretium non. Vivamus eget feugiat tellus, nec aliquet metus.
</p><p>
Morbi at magna enim. Nunc hendrerit ultrices ultricies. Quisque vel velit vitae ligula eleifend fermentum id non metus. Aenean nec vulputate lacus, vel placerat augue. Proin pellentesque purus sit amet purus luctus tempor. Donec tincidunt vel odio eu consectetur. Phasellus suscipit cursus eros, ut porta neque pellentesque eget. Etiam eu tempus mauris, quis placerat augue. Pellentesque at accumsan augue. Nulla ut mauris diam. Nam lobortis fermentum laoreet. Donec sed erat interdum, scelerisque elit id, facilisis odio. Nunc consectetur sodales neque, eu laoreet dolor pretium ut. Proin porta bibendum condimentum.
</p>
EOS
Lecture.create(
  :course_id => 2,
  :app_id => nil,
  :user_id => nil,
  :code => '2_lecture_1',
  :name => 'Lecture 1',
  :title => 'Introduction and Basics',
  :description => 'This is just a micky-mouse lacture to fool people',
  :abstract => abstract,
  :p_abstract => abstract,
  :content => content,
  :p_content => content,
  :position => 1,
  :published => true,
  :active => true
)
puts ' -- quizzes' 
abstract = <<EOS
Abstrast template
EOS
content = <<EOS
Content Template.
EOS
Quiz.create(
  :lecture_id => 1,
  :app_id => nil,
  :user_id => nil,
  :code => 'quiz_1',
  :name => 'Quiz 1',
  :title => 'Introduction',
  :description => 'First Course',
  :abstract => abstract,
  :p_abstract => abstract,
  :content => content,
  :p_content => content,
  :position => 1,
  :published => true,
  :active => true
)
puts ' -- questions' 
abstract = <<EOS
EOS
content = <<EOS
What is your name?
EOS
question_text = <<EOS
EOS
Question.create(
  :quiz_id => 1,
  :app_id => nil,
  :user_id => nil,
  :code => 'q1',
  :name => '',
  :title => '',
  :description => '',
  :abstract => abstract,
  :p_abstract => abstract,
  :content => content,
  :p_content => content,
  :question_text => question_text,
  :p_question_text => question_text,
  :answer_a => 'Fluffy',
  :p_answer_a => 'Fluffy',
  :correct_a => false,
  :p_correct_a => false,
  :answer_b => 'Duffy',
  :p_answer_b => 'Duffy',
  :correct_b => true,
  :p_correct_b => true,
  :answer_c => 'Cuffy',
  :p_answer_c => 'Cuffy',
  :correct_c => true,
  :p_correct_c => true,
  :answer_d => 'Snuffy',
  :p_answer_d => 'Snuffy',
  :correct_d => false,
  :p_correct_d => false,
  :answer_e => '',
  :p_answer_e => '',
  :correct_e => false,
  :p_correct_e => false,
  :answer_f => '',
  :p_answer_f => '',
  :correct_f => false,
  :p_correct_f => false,
  :position => 1,
  :published => true,
  :active => true
)