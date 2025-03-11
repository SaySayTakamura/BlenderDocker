import bpy

#Documentation:
#https://docs.blender.org/api/current/bpy.types.RenderSettings.html
#https://docs.blender.org/api/current/bpy.types.RenderSettings.html#bpy.types.RenderSettings.resolution_x
#https://docs.blender.org/api/current/bpy.types.Scene.html#bpy.types.Scene.cycles

#Main entrypoint
def main():
    print("-SCRIPT START-")
    print("SCRIPT VER - 0.2.8")
    print("RENDER RES - 4K")
    print("RENDER LEVEL - HIGH")
    
    print("Changing RENDER settings")
    
    #General Settings
    bpy.data.scenes["Scene"].render.resolution_x = 3840
    bpy.data.scenes["Scene"].render.resolution_y = 2160
    bpy.data.scenes["Scene"].render.resolution_percentage = 100
    bpy.data.scenes["Scene"].render.pixel_aspect_x = 1.0
    bpy.data.scenes["Scene"].render.pixel_aspect_y = 1.0
    bpy.data.scenes["Scene"].render.use_border = True
    bpy.data.scenes["Scene"].render.use_crop_to_border = True
    bpy.data.scenes["Scene"].render.use_file_extension = True
    bpy.data.scenes["Scene"].render.image_settings.file_format = 'PNG'
    bpy.data.scenes["Scene"].render.image_settings.color_depth = '16'
    bpy.data.scenes["Scene"].render.image_settings.color_mode = 'RGBA'
    bpy.data.scenes["Scene"].render.image_settings.compression = 0
    bpy.data.scenes["Scene"].render.image_settings.color_management = 'FOLLOW_SCENE'
    bpy.data.scenes["Scene"].render.use_overwrite = True
    bpy.data.scenes["Scene"].render.use_sequencer = True    
   
    bpy.data.scenes["Scene"].render.engine = 'CYCLES'
    bpy.data.scenes["Scene"].cycles.device = 'CPU'
    bpy.data.scenes["Scene"].cycles.feature_set = 'SUPPORTED'
    bpy.data.scenes["Scene"].cycles.shading_system = True
    bpy.data.scenes["Scene"].cycles.open_shading_language = True
    
    #Preview Render Settings
    bpy.data.scenes["Scene"].cycles.use_preview_denoising = True
    bpy.data.scenes["Scene"].cycles.use_preview_adaptive_sampling = True   
    bpy.data.scenes["Scene"].cycles.preview_adaptive_threshold = 1.0
    bpy.data.scenes["Scene"].cycles.preview_samples = 128
        
    #Final Render Settings
    bpy.data.scenes["Scene"].cycles.use_denoising = True
    bpy.data.scenes["Scene"].cycles.use_adaptive_sampling = True
    bpy.data.scenes["Scene"].cycles.adaptive_threshold = 1.0
    bpy.data.scenes["Scene"].cycles.samples = 256
    
    #General Render Settings
    bpy.data.scenes["Scene"].cycles.max_bounces = 32
    bpy.data.scenes["Scene"].cycles.diffuse_bounces = 32
    bpy.data.scenes["Scene"].cycles.glossy_bounces = 32
    bpy.data.scenes["Scene"].cycles.transmission_bounces = 32
    bpy.data.scenes["Scene"].cycles.volume_bounces = 32
    bpy.data.scenes["Scene"].cycles.transparent_bounces = 32
    bpy.data.scenes["Scene"].cycles.sample_clamp_direct = 0.0
    bpy.data.scenes["Scene"].cycles.sample_clamp_indirect = 10.0
    bpy.data.scenes["Scene"].cycles.blur_glossy = 1.0
    bpy.data.scenes["Scene"].cycles.caustics_refractive = True
    
    #Performance Settings
    bpy.data.scenes["Scene"].cycles.use_auto_tiling = True
    bpy.data.scenes["Scene"].cycles.tile_size = 128
    bpy.data.scenes["Scene"].cycles.debug_use_spatial_splits = True
    bpy.data.scenes["Scene"].render.threads_mode = 'FIXED'
    bpy.data.scenes["Scene"].render.threads = 2
    bpy.data.scenes["Scene"].render.use_compositing = True
    bpy.data.scenes["Scene"].render.compositor_device = 'CPU'
    bpy.data.scenes["Scene"].render.compositor_precision = 'AUTO'
    bpy.data.scenes["Scene"].render.use_persistent_data = False
    bpy.data.scenes["Scene"].render.preview_pixel_size = 'AUTO'
    
    print("Done")  
    print("-SCRIPT END-")