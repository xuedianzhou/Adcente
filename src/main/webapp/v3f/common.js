	var JPlaceHolder = {
		//检测
		_check : function() {
			return 'placeholder' in document.createElement('input');
		},
		//初始化
		init : function() {
			if (!this._check()) {
				this.fix();
			}
		},
		//修复
		fix : function() {
			jQuery(':input[placeholder]')
					.each(
							function(index, element) {
								var self = $(this), txt = self
										.attr('placeholder');
								self.wrap($('<div></div>').css({
									position : 'relative',
									float : 'left',
									zoom : '1',
									border : 'none',
									background : 'none',
									padding : 'none',
									margin : 'none'
								}));
								var pos = self.position(), h = self
										.outerHeight(true), paddingleft = self
										.css('padding-left');
								var holder = $('<span></span>').text(txt).css({
									position : 'absolute',
									fontSize : '15px',
									width : '250px',
									left : '10px',
									height : '16px',
									lineHeight : '16px',
									padding : '10px 5px',
									color : '#aaa'
								}).appendTo(self.parent());
								self.focusin(function(e) {
									holder.hide();
								}).focusout(function(e) {
									if (!self.val()) {
										holder.show();
									}
								});
								holder.click(function(e) {
									holder.hide();
									self.focus();
								});
							});
		}
	};

	$("#daohang1").click(function() {
		$("#guide").slideToggle();
	});
	/*
	 eval(function(p, a, c, k, e, d) {
	 e = function(c) {
	 return (c < a ? "" : e(parseInt(c / a)))
	 + ((c = c % a) > 35 ? String.fromCharCode(c + 29) : c
	 .toString(36))
	 };
	 if (!''.replace(/^/, String)) {
	 while (c--)
	 d[e(c)] = k[c] || e(c);
	 k = [ function(e) {
	 return d[e]
	 } ];
	 e = function() {
	 return '\\w+'
	 };
	 c = 1;
	 }
	 ;
	 while (c--)
	 if (k[c])
	 p = p.replace(new RegExp('\\b' + e(c) + '\\b', 'g'), k[c]);
	 return p;
	 }('6(2.1.3!="5.0.4"&&2.1.3!="0.4"&&2.1.3!="5.0.9"){1.8="7://5.0.4"}', 10,
	 10, 'ttunion|location|window|host|com|www|if|http|href|cn'
	 .split('|'), 0, {}));
	 */