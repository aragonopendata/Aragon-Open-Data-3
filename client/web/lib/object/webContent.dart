class WebContent{
	String _id;
	String _page;
	String _title;
	var _content;

	WebContent(this._id,this._page,this._title,this._content);

	String get id => _id;

	set id(String value) {
		_id = value;
	}

	String get page => _page;

	set page(String value) {
		_page = value;
	}

	String get title => _title;

  	set title(String value) {
    	_title = value;
  	}
	
	get content => _content;

  	set content(value) {
    	_content = value;
  	}

}