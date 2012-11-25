~gui = ();

~gui.init = { |self|
		
	self.window = Window("jam-stack", Window.availableBounds).front;
	
	self.channels = HLayout();
	self.masterChannels = HLayout(); //--> alignment...
	
	self.addMasterChannel("test");
	
	self.layout = HLayout(
		[self.channels, align: \left], 
		[self.masterChannels, align: \right]
	);
	
	self.view = View(self.window, Window.availableBounds).layout_(self.layout);
	
/*	self.window.layout_(self.layout);*/
/*	self.window.fullScreen;*/
};

~gui.masterChannel = { |self, title = ""|
	var v = View(nil, 20@(self.window.bounds.height));
	LevelIndicator(v, 5@self.window.bounds.height).value_(0.5);
	v;
};
~gui.addMasterChannel = { |self, title = ""|
	self.masterChannels.add(self.masterChannel(title));
};

~gui.init();
~gui.addMasterChannel("test")
4.do({ ~gui.addMasterChannel("amstr") });

~gui.masterChannels.children
~gui.masterChannel()
~gui.masterChannels.add(x)

~gui.window.layout.children[0].children

x = View(~gui.view, 400@700).layout_(HLayout())
y = LevelIndicator(~gui.view, 5@700).value_(0.5)
x.layout.add(LevelIndicator())


~gui.view.children[0].children[0].value_(0.2)
