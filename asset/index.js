define(['oxjs'],function(OXJS){
  return {
    init:function($mod){
    	var $list=$mod.children('.list');
    	var no_more_data=$list.children('.item').length <10;
    	var currentIndex=0,
			TO,
			checkHeight=function(){
				if(!no_more_data && document.body.scrollHeight - win.height() -win.scrollTop() < 200){
						//console.log('got')
					var lastLength=$list.children('.item').length;
					try{
						$list.OXRefresh({ 
							"ui-imglist":{
								$index: ++currentIndex,
								$limit:10
							}
						},function(){
							if($list.children('.item').length == lastLength){
								no_more_data=true;
							}
						})
					}catch(e){
						console.error(e)
					}
					
				}
			},
			win=$(window).on('scroll',function() {
				TO && clearTimeout(TO);
				TO=setTimeout(checkHeight,200)
				
			});
			checkHeight();

    }
  }
})
