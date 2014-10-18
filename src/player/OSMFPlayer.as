package player
{
	import mx.core.UIComponent;
	
	import org.osmf.containers.MediaContainer;
	import org.osmf.media.DefaultMediaFactory;
	import org.osmf.media.MediaElement;
	import org.osmf.media.MediaPlayer;
	
	//Sets the size of the SWF
	
	public class OSMFPlayer extends UIComponent
	{
		import org.osmf.media.URLResource;
		
		//URI of the media
		public static const PROGRESSIVE_PATH:String ="http://mediapm.edgesuite.net/strobe/content/test/AFaerysTale_sylviaApostol_640_500_short.flv";
		
		public var demo_Player:MediaPlayer;
		public var container:MediaContainer;
		public var mediaFactory:DefaultMediaFactory;
		
		public function OSMFPlayer()
		{
			initPlayer();
		}
		
		protected function initPlayer():void
		{
			//the pointer to the media
			var resource:URLResource = new URLResource( PROGRESSIVE_PATH );
			
			// Create a mediafactory instance
			mediaFactory = new DefaultMediaFactory();
			
			//creates and sets the MediaElement (generic) with a resource and path
			var element:MediaElement = mediaFactory.createMediaElement( resource );
			
			//the simplified api controller for media
			demo_Player = new MediaPlayer( element );
			
			//the container (sprite) for managing display and layout
			container = new MediaContainer();
			container.addMediaElement( element );
			
			//Adds the container to the stage
			this.addChild( container );
		}
	}
}