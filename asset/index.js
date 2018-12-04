define(['oxjs'],function(OXJS){
  return {
    init:function($mod){
    	
    	var currentIndex=0,
			TO,
			checkHeight=function(){
				if(document.body.scrollHeight - win.height() -win.scrollTop() < 200){
						//console.log('got')
						try{
							$mod.OXRefresh({ 
								"ui-imglist":{
									$index: ++currentIndex,
									$limit:10
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
