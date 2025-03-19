import bpy

#Documentation:
#https://docs.blender.org/api/current/bpy.types.RenderSettings.html
#https://docs.blender.org/api/current/bpy.types.RenderSettings.html#bpy.types.RenderSettings.resolution_x
#https://docs.blender.org/api/current/bpy.types.Scene.html#bpy.types.Scene.cycles

#Main entrypoint
def main():
    print("-SCRIPT START-")
    print("SCRIPT VER - 0.2.8")
    print("RENDER RES - 720p")
    print("RENDER LEVEL - HIGH")
    
    print("Changing RENDER settings")
    
    #General Settings
    bpy.context.scene.render.resolution_x = 1280
    bpy.context.scene.render.resolution_y = 720
    bpy.context.scene.render.resolution_percentage = 100
    bpy.context.scene.render.pixel_aspect_x = 1.0
    bpy.context.scene.render.pixel_aspect_y = 1.0
    bpy.context.scene.render.use_border = True
    bpy.context.scene.render.use_crop_to_border = True
    bpy.context.scene.render.use_file_extension = True
    bpy.context.scene.render.image_settings.file_format = 'PNG'
    bpy.context.scene.render.image_settings.color_depth = '16'
    bpy.context.scene.render.image_settings.color_mode = 'RGBA'
    bpy.context.scene.render.image_settings.compression = 0
    bpy.context.scene.render.image_settings.color_management = 'FOLLOW_SCENE'
    bpy.context.scene.render.use_overwrite = True
    bpy.context.scene.render.use_sequencer = True    
   
    bpy.context.scene.render.engine = 'CYCLES'
    bpy.context.scene.cycles.device = 'CPU'
    bpy.context.scene.cycles.feature_set = 'SUPPORTED'
    bpy.context.scene.cycles.shading_system = True
    bpy.context.scene.cycles.open_shading_language = True
    
    #Preview Render Settings
    bpy.context.scene.cycles.use_preview_denoising = True
    bpy.context.scene.cycles.use_preview_adaptive_sampling = True   
    bpy.context.scene.cycles.preview_adaptive_threshold = 1.0
    bpy.context.scene.cycles.preview_samples = 128
        
    #Final Render Settings
    bpy.context.scene.cycles.use_denoising = True
    bpy.context.scene.cycles.use_adaptive_sampling = True
    bpy.context.scene.cycles.adaptive_threshold = 1.0
    bpy.context.scene.cycles.samples = 256
    bpy.context.scene.cycles.use_guiding = True

    #General Render Settings
    bpy.context.scene.cycles.max_bounces = 32
    bpy.context.scene.cycles.diffuse_bounces = 32
    bpy.context.scene.cycles.glossy_bounces = 32
    bpy.context.scene.cycles.transmission_bounces = 32
    bpy.context.scene.cycles.volume_bounces = 32
    bpy.context.scene.cycles.transparent_bounces = 32
    bpy.context.scene.cycles.sample_clamp_direct = 0.0
    bpy.context.scene.cycles.sample_clamp_indirect = 10.0
    bpy.context.scene.cycles.blur_glossy = 1.0
    bpy.context.scene.cycles.caustics_refractive = True
    
    #Performance Settings
    bpy.context.scene.cycles.use_auto_tiling = True
    bpy.context.scene.cycles.tile_size = 128
    bpy.context.scene.cycles.debug_use_spatial_splits = True
    bpy.context.scene.render.threads_mode = 'FIXED'
    bpy.context.scene.render.threads = 2
    bpy.context.scene.render.use_compositing = True
    bpy.context.scene.render.compositor_device = 'CPU'
    bpy.context.scene.render.compositor_precision = 'AUTO'
    bpy.context.scene.render.use_persistent_data = False
    bpy.context.scene.render.preview_pixel_size = 'AUTO'
    
    print("Done")  
    print("-SCRIPT END-")
    
if __name__ == "__main__":
    main()