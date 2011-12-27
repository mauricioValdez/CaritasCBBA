<!--
function highlight(){

	this.images = new Array();
	this.botones = new Object();
	this.links = new Object();
	this.container;
	this.navegation;
	this.counterpreloader = 0;
	this.currentimage = 0;
	this.counter = 0;
	this.rotator;
	this.time;

	this.slider = function(cont,nav,t){
		var root = this;
		this.time = t * 1000;
		this.container = document.getElementById(cont);
		this.botones = this.container.getElementsByTagName('p');
		var total = this.container.getElementsByTagName('img');
		for(var i=0; i<total.length; i++){
			this.images[i] = total[i];
			var img = new Image();
			img.z = i;
			img.onload = function(){
				root.images[this.z].style.zIndex = this.z + 1;
				root.counterpreloader+= 1;
				if(root.counterpreloader >= total.length){
					root.images[0].style.zIndex = total.length + 1;
					root.fadeElement(root.images[0],true);
					root.counterpreloader = 0;
					root.swithImage(root.currentimage);
					root.container.style.background = "white";
					root.loadButtons(nav);
				}
			}
			img.src = this.images[i].src;
		}
	}

	this.loadButtons = function(nav){
		this.navegation = document.getElementById(nav);
		this.links = this.navegation.getElementsByTagName('a');
		var root = this;
		for(var i=0; i<this.botones.length; i++){
			this.links[i].onclick = function(){
				root.chageItem(this.parentNode);
			}
		}
	}
	
	this.fadeElement = function(element,fadetype){
		if(fadetype){
			var fadenumber = 0;
		}else{
			var fadenumber = 10;
		}
		var fadeopacity;
		var fadealpha;
		var showcontainer = setInterval(fade,100);
		function fade(){
			if(fadetype){
				fadenumber+= 2;
				fadeopacity = fadenumber / 10;
				fadealpha = fadenumber * 10;
				if(fadenumber >= 10){
					clearInterval(showcontainer);
					element.style.opacity = '1';
					element.style.filter = 'alpha(opacity=100)';
				}else{
					element.style.opacity = fadeopacity;
					element.style.filter = 'alpha(opacity='+fadealpha+')';
				}
			}else{
				fadenumber-= 2;
				fadeopacity = fadenumber / 10;
				fadealpha = fadenumber * 10;
				if(fadenumber <= 0){
					clearInterval(showcontainer);
					element.style.opacity = '0';
					element.style.filter = 'alpha(opacity=0)';
				}else{
					element.style.opacity = fadeopacity;
					element.style.filter = 'alpha(opacity='+fadealpha+')';
				}
			}
		}
	}

	this.swithImage = function(current){
		this.currentimage = current;
		clearTimeout(this.rotator);
		this.rotator = setTimeout(swithImg,this.time);
		var root = this;
		function swithImg (){
			if(root.currentimage >= root.images.length - 1){
				root.fadeElement(root.images[root.currentimage],false);
				root.images[root.currentimage].style.zIndex = root.currentimage;
				root.fadeElement(root.images[0],true);
				root.images[0].style.zIndex = root.images.length + 1;
				root.tagMake(0);
				root.currentimage = root.images.length;
			}else{
				root.fadeElement(root.images[root.currentimage],false);
				root.images[root.currentimage].style.zIndex = root.currentimage;
				root.fadeElement(root.images[root.currentimage + 1],true);
				root.images[root.currentimage + 1].style.zIndex = root.images.length + 1;
				root.tagMake(root.currentimage + 1);
			}
			if(root.currentimage >= root.images.length){
				root.currentimage = 0;
			}else{
				root.currentimage++;
			}
			root.rotator = setTimeout(swithImg,root.time);
		}
	}

	this.chageItem = function(element){
		if(element != this.botones[this.currentimage]){
			for(var i=0; i<this.botones.length; i++){
				if(element == this.botones[i]){
					this.tagMake(i);
					this.fadeElement(this.images[this.currentimage],false);
					this.images[this.currentimage].style.zIndex = this.currentimage;
					this.fadeElement(this.images[i],true);
					this.images[i].style.zIndex = this.images.length + 1;
					this.swithImage(i);
				}
			}
		}
	}

	this.tagMake = function(num){
		for(var i=0; i<this.botones.length; i++){
			this.botones[i].className = "";
		}
		this.botones[num].className = "selected";
	}
	
}
-->