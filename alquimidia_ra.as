package {
	import flash.events.*;
	import flash.filters.*;
	import org.papervision3d.lights.PointLight3D;
	import org.papervision3d.materials.WireframeMaterial;
	import org.papervision3d.materials.shadematerials.FlatShadeMaterial;
	import org.papervision3d.materials.utils.MaterialsList;
	import org.papervision3d.objects.primitives.Cube;
	import org.papervision3d.objects.primitives.Plane;
	import org.papervision3d.objects.primitives.Sphere;
	
	import org.papervision3d.materials.BitmapFileMaterial;
	import org.papervision3d.materials.MovieMaterial;
	import org.papervision3d.materials.shadematerials.GouraudMaterial;
	import org.papervision3d.objects.DisplayObject3D;
	import org.papervision3d.objects.parsers.Collada;
	
	[SWF(width=800, height=600, backgroundColor=0x808080, frameRate=30)]
	
	public class alquimidia_ra extends PV3DARApp {
		
		private var _plane:Plane;
		private var _logo:Logo;
		public function alquimidia_ra() {
			this.init('Data/camera_para.dat', 'Data/flarlogo.pat');
		}
		
		protected override function onInit():void {
			super.onInit();
			
			var light:PointLight3D = new PointLight3D();
			light.x = 0;
			light.y = 2000;
			light.z = -2000;
			
			var material:MovieMaterial = new MovieMaterial(new Muvi(),true);						
			material.animated=true;
			
			//var wmat:FlatShadeMaterial = new FlatShadeMaterial(light, 0xffffff, 0x00ff00);
			//var gou:GouraudMaterial = new GouraudMaterial(light, 0xffffff, 0xff0000);
			
			//this._plane = new Plane(wmat, 100, 100);
			this._plane = new Plane(material, 350, 350);
			this._plane.x = 70;
			this._plane.y = -20;
			this._plane.z = 0;
			this._plane.scale=1.4;
			//this._plane.scale=2;
			
			this._logo=new Logo();
			this._logo.x=650;
			this._logo.y=550;
			this._baseNode.addChild(this._plane);			
			stage.addChild(this._logo);			
		}
	}
}