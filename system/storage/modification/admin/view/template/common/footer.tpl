</div>
</body></html>
 
            <script>
            	var ru2en = {
				  ru_str : 'ABCDEFGHIJKLMNOPQRSTUVWXYZАБВГДЕЁЖЗИЙКЛМНОПРСТУФХЦЧШЩЪЫЬЭЮЯабвгдеёжзийклмнопрстуфхцчшщъыьэюя,.; "+/*?!@()',
				  en_str : ['a','b','c','d','e','f','g','h','i','j','k','l','m','n','o','p','q','r','s','t','u','v','w','x','y','z','a','b','v','g','d','e','jo','zh','z','i','j','k','l','m','n','o','p','r','s','t',
				    'u','f','h','c','ch','sh','shh','','i','','je','ju',
				    'ja','a','b','v','g','d','e','jo','zh','z','i','j','k','l','m','n','o','p','r','s','t','u','f',
				    'h','c','ch','sh','shh','','i','','je','ju','ja','','','','-','','','','','','','','',''],
				  translit : function(org_str) {
				    var tmp_str = "";
				    for(var i = 0, l = org_str.length; i < l; i++) {
				      var s = org_str.charAt(i), n = this.ru_str.indexOf(s);
				      if(n >= 0) { tmp_str += this.en_str[n]; }
				      else { tmp_str += s; }
				    }
				    return tmp_str;
				  }
				}

				function setTranslit(source, dest, rewrite) {
					var name = $("input[name='"+source+"']").val();
					if (name != undefined) {
						$("input[name='"+source+"']").change(function(){
							var name = $("input[name='"+source+"']").val();
							var key = $("input[name='"+dest+"']").val();
							if ((key == '')||(rewrite))
								$("input[name='"+dest+"']").val(ru2en.translit(name));
						});
					}
				}

				$(document).ready(function(){
					// Products
					setTranslit("product_description\\[1\\]\\[name\\]", "keyword", false);
					// Info Articles
					setTranslit("information_description\\[1\\]\\[title\\]", "keyword", false);
					// Categories
					setTranslit("category_description\\[1\\]\\[name\\]", "keyword", false);
					// Manufacturer
					setTranslit("name", "keyword", true);
				});
            </script>
        
