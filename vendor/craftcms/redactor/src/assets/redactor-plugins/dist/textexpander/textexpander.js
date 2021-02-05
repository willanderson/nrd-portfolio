Redactor.add("plugin","textexpander",{init:function(e){this.app=e,this.opts=e.opts,this.utils=e.utils,this.editor=e.editor,this.marker=e.marker,this.keycodes=e.keycodes,this.selection=e.selection},start:function(){this.opts.textexpander&&this.editor.getElement().on("keyup.redactor-plugin-textexpander",this._expand.bind(this))},stop:function(){this.editor.getElement().off(".redactor-plugin-textexpander")},_expand:function(e){if(e.which===this.keycodes.SPACE)for(var t=this.opts.textexpander.length,i=0;i<t;i++){var s=this.opts.textexpander[i],n=new RegExp(this.utils.escapeRegExp(s[0])+"\\s$"),r=this.selection.getTextBeforeCaret(s[0].length+1).replace(/\s$/,"");if(s[0]===r)return this._replaceSelection(n,s[1])}},_replaceSelection:function(e,t){var i=this.marker.insert("start").previousSibling,s=i.textContent;s=(s=s.replace(/&nbsp;/," ")).replace(e,t),i.textContent=s,this.selection.restoreMarkers()}});
//# sourceMappingURL=textexpander.js.map
