GDPC                p	                                                                         T   res://.godot/exported/133200997/export-46d1be181c059a635b8ad2c76ae08cde-Ballon.scn  �-            덡 m�b�7_����    \   res://.godot/exported/133200997/export-72b7163aef70b47b554d95216ff76843-Ballon_mat_red.res          `
      m�j����=/b�E�    T   res://.godot/exported/133200997/export-99beb2a54ed6a5c78f5ff597dba7c64c-Crate.scn   �)      �      ��hV
�o�gf�    T   res://.godot/exported/133200997/export-c51b3f3b65d7a46c091567fe47be63cf-Physics.scn �      �      ;�Vo� ���fD�WG    \   res://.godot/exported/133200997/export-cc2ee237f78f633ddab8b4044a42eceb-Popple_ballon.scn   �      �      �.NB1�؎p&�lz`    ,   res://.godot/global_script_class_cache.cfg  �B             ��Р�8���8~$}P�    H   res://.godot/imported/Crate.png-448c23a5df7b4c78be96ef7fcb4d8489.ctex   �      �       �E�������`�a    P   res://.godot/imported/PhysicsCharacter.png-7e7c0076c96eb6343a0bb1b4f39e8578.ctexP      �        ��WyT7Irv[3W]&    D   res://.godot/imported/Star.png-9724b68b0bce8f7652c82ab23c097dcd.ctex�      �      �o4��`
x������    D   res://.godot/imported/icon.svg-218a8f2b3041327d8a5756f3a245f83b.ctex�2      �      �̛�*$q�*�́        res://.godot/uid_cache.bin  pF      L      �!p��k��M���        res://Ballon Popper/Ballon.gd   `
      �      5�(�����6�EB·    (   res://Ballon Popper/Ballon_Manager.gd   0      �       �#)_���W��cq��r    ,   res://Ballon Popper/Popple_ballon.tscn.remap�@      j        &]�sj믎/I d��    4   res://Ballon Popper/assets/Ballon_mat_red.tres.remap`@      k       �h��O���1�9�5$u       res://Ballon.tscn.remap  B      c       �
H��*I9!���}    ,   res://Loops Project/Assets/Star.png.import        �       ����ʃ�F��'p.Y    0   res://Physics Project/Assets/Crate.png.import   �      �       s��t!H�-H���    8   res://Physics Project/Assets/PhysicsCharacter.png.import       �       ���������UD*�h�    (   res://Physics Project/Crate.tscn.remap  �A      b       ��!��6	�T�X���    (   res://Physics Project/Physics.tscn.remap@A      d       � ���>E��m��    (   res://Physics Project/PhysicsPlayer.gd  �(      �       �!�ŝ�׽��Ϻs       res://icon.svg  �B      �      C��=U���^Qu��U3       res://icon.svg.import   �?      �       �5��n���"�:�       res://project.binary�H      X      �R�����bJG�    RSRC                    StandardMaterial3D            ��������                                            n      resource_local_to_scene    resource_name    render_priority 
   next_pass    transparency    blend_mode 
   cull_mode    depth_draw_mode    no_depth_test    shading_mode    diffuse_mode    specular_mode    disable_ambient_light    vertex_color_use_as_albedo    vertex_color_is_srgb    albedo_color    albedo_texture    albedo_texture_force_srgb    albedo_texture_msdf 	   metallic    metallic_specular    metallic_texture    metallic_texture_channel 
   roughness    roughness_texture    roughness_texture_channel    emission_enabled 	   emission    emission_energy_multiplier    emission_operator    emission_on_uv2    emission_texture    normal_enabled    normal_scale    normal_texture    rim_enabled    rim 	   rim_tint    rim_texture    clearcoat_enabled 
   clearcoat    clearcoat_roughness    clearcoat_texture    anisotropy_enabled    anisotropy    anisotropy_flowmap    ao_enabled    ao_light_affect    ao_texture 
   ao_on_uv2    ao_texture_channel    heightmap_enabled    heightmap_scale    heightmap_deep_parallax    heightmap_flip_tangent    heightmap_flip_binormal    heightmap_texture    heightmap_flip_texture    subsurf_scatter_enabled    subsurf_scatter_strength    subsurf_scatter_skin_mode    subsurf_scatter_texture &   subsurf_scatter_transmittance_enabled $   subsurf_scatter_transmittance_color &   subsurf_scatter_transmittance_texture $   subsurf_scatter_transmittance_depth $   subsurf_scatter_transmittance_boost    backlight_enabled 
   backlight    backlight_texture    refraction_enabled    refraction_scale    refraction_texture    refraction_texture_channel    detail_enabled    detail_mask    detail_blend_mode    detail_uv_layer    detail_albedo    detail_normal 
   uv1_scale    uv1_offset    uv1_triplanar    uv1_triplanar_sharpness    uv1_world_triplanar 
   uv2_scale    uv2_offset    uv2_triplanar    uv2_triplanar_sharpness    uv2_world_triplanar    texture_filter    texture_repeat    disable_receive_shadows    shadow_to_opacity    billboard_mode    billboard_keep_scale    grow    grow_amount    fixed_size    use_point_size    point_size    use_particle_trails    proximity_fade_enabled    proximity_fade_distance    msdf_pixel_range    msdf_outline_size    distance_fade_mode    distance_fade_min_distance    distance_fade_max_distance    script        !   local://StandardMaterial3D_aqv87 �	         StandardMaterial3D          ��r?          �?        �>#         %      �?m      RSRCextends Area3D

@export var clicks_to_pop : int = 3
@export var size_increase : float = 0.2
@export var score_to_give : int = 1


func _on_input_event(_camera, event, _position, _normal, _shape_idx):
	if event is InputEventMouseButton and event.button_index == MOUSE_BUTTON_LEFT and event.pressed:
		scale += Vector3.ONE * size_increase
		clicks_to_pop -= 1
		
		if clicks_to_pop == 0:
			get_node("/root/Main").increase_score(score_to_give)
			queue_free()
��9d�extends Node3D

var score : int = 0
@export var score_text : Label

func increase_score(amount):
	score += amount
	score_text.text = str("Score: ", score)
�dRSRC                    PackedScene            ��������                                               
   ScoreText    resource_local_to_scene    resource_name    line_spacing    font 
   font_size    font_color    outline_size    outline_color    shadow_size    shadow_color    shadow_offset    script 	   _bundled       Script &   res://Ballon Popper/Ballon_Manager.gd ��������   PackedScene    res://Ballon.tscn m�q�Ez�U      local://LabelSettings_g1b3c          local://PackedScene_v7bnb 8         LabelSettings                      PackedScene          	         names "         Main    script    score_text    Node3D    Ballon    Ballon2 
   transform    clicks_to_pop    Ballon3    Ballon4    Ballon5 	   Camera3D    DirectionalLight3D 
   ScoreText    offset_left    offset_top    offset_right    offset_bottom    text    label_settings    Label    	   variants                                         �?              �?              �?�2�pC@?               �?              �?              �?    *�?               �?              �?              �?���?,��?         �?              �?              �?�! @d��               �?              �?              �?        [%6@   ��?Mi?j�%?DS���>{?�kV>�5R�[�?��R@��>@���@     �A     �A     vC     lB   	   Score: 0                 node_count    	         nodes     a   ��������       ����            @               ���                      ���                                 ���                                 ���	                           ���
                  	                     ����      
                     ����                           ����                                                 conn_count              conns               node_paths              editable_instances              version             RSRC�qTʲ
dD���GST2            ����                        X  RIFFP  WEBPVP8LD  /��(�$E9�h ����ژEmI���E����H������7=x;RB�$"����'Г<��3!����%P&	�$	J�S� ++H����D�(ħ�����J��ꦟ7ҿ��a$٦u�m�6�����%��m� ��� @e(�bT �8A'�CO����Ҫn�2�) 3�n<���+tT9������]*k�]�����y_��	��9=~����8�!%%���?�:w�HE����vj"����������m�<���|���ݰ�O}WX B�iYwu�8����q�ʘ��h!�
��[remap]

importer="texture"
type="CompressedTexture2D"
uid="uid://su0hpdlffolu"
path="res://.godot/imported/Star.png-9724b68b0bce8f7652c82ab23c097dcd.ctex"
metadata={
"vram_texture": false
}
 GST2            ����                        r   RIFFj   WEBPVP8L]   /@'��m6(g9�H�67)��pO'����*50E���؍�
�m��K�e�P8T�0D������]�m{��"m���!m�ya�D��~ ����[remap]

importer="texture"
type="CompressedTexture2D"
uid="uid://bxxnslbtlh6dr"
path="res://.godot/imported/Crate.png-448c23a5df7b4c78be96ef7fcb4d8489.ctex"
metadata={
"vram_texture": false
}
 9,����0����1JGST2            ����                        �   RIFF�   WEBPVP8L|   /�/@`2ν1�Sd�d�J�F&`� �D�\1�"�G��wZ+� 0�m+�G-�R@*h �O^�0�� ����*0��y��Y�f5�%��M��*��&f�M�0Q6���'�4�N ?c=>b|y[remap]

importer="texture"
type="CompressedTexture2D"
uid="uid://dtp6oblrxu55m"
path="res://.godot/imported/PhysicsCharacter.png-7e7c0076c96eb6343a0bb1b4f39e8578.ctex"
metadata={
"vram_texture": false
}
 h�ARSRC                    PackedScene            ��������                                                  resource_local_to_scene    resource_name    custom_solver_bias    size    script 	   _bundled       Script '   res://Physics Project/PhysicsPlayer.gd ��������
   Texture2D 2   res://Physics Project/Assets/PhysicsCharacter.png ��sQv   PackedScene !   res://Physics Project/Crate.tscn �g'�I��k      local://RectangleShape2D_q2014 �         local://PackedScene_d8vdt #         RectangleShape2D       
     �A  �A         PackedScene          	         names "   :      Main    Node2D    Player    mass    gravity_scale    linear_damp    script    RigidBody2D 	   Sprite2D    texture    CollisionShape2D    shape 	   Camera2D    zoom    Crates    Node    Crate    Crate2 	   position    Crate3    Crate4    Crate5    Crate6    Crate7    Crate8    Crate9    Crate10    Crate11    Crate12    Crate13    Crate14    Crate15    Crate16    Crate17    Crate18    Crate19    Crate20    Crate21    Crate22    Crate23    Crate24    Crate25    Crate26    Crate27    Crate28    Crate29    Crate30    Crate31    Crate32    Crate33    Crate34    Crate35    Crate36    Crate37    Crate38    Crate39    Crate40    Crate41    	   variants    0        �@            �?                             
     @@  @@         
     �  �B
     �  ��
     `�  ��
     �  0�
     ��  D�
     �B  x�
     �A  ��
     �B  ��
     C  ��
     C  �
     /C  ��
     �B  ��
     �B  B
     C  �B
     ,C  TB
     'C  0A
     B  �B
     �B  �B
     �  �B
     ��  4B
     ��  �B
     ��  �B
     �  �A
     ��  l�
     <�  (B
     �A  LB
     (B  ��
     H�  ��
     ��  h�
     ��   @
     ��  ��
     %�  ��
     @�  lB
      �  �B
     �B  �@
     \B  `�
     �B  ��
     C  �?
     �@  �
     ,B   A      node_count    /         nodes     �  ��������       ����                      ����                                             ����   	                 
   
   ����                           ����                           ����               ���                     ���                          ���            	              ���            
              ���                          ���                          ���                          ���                          ���                          ���                          ���                          ���                          ���                          ���                          ���                          ���                           ���!                          ���"                          ���#                          ���$                          ���%                          ���&                          ���'                          ���(                          ���)                          ���*                           ���+            !              ���,            "              ���-            #              ���.            $              ���/            %              ���0            &              ���1            '              ���2            (              ���3            )              ���4            *              ���5            +              ���6            ,              ���7            -              ���8            .              ���9            /             conn_count              conns               node_paths              editable_instances              version             RSRCF�|extends RigidBody2D

var hit_force : float = 50.0


func _process(_delta):
	if Input.is_mouse_button_pressed(MOUSE_BUTTON_LEFT):
		var dir = global_position.direction_to(get_global_mouse_position())
		apply_impulse(dir * hit_force)
_�����RSRC                    PackedScene            ��������                                                  resource_local_to_scene    resource_name    custom_solver_bias    size    script 	   _bundled    
   Texture2D '   res://Physics Project/Assets/Crate.png �A�&�,18      local://RectangleShape2D_d75qr l         local://PackedScene_fa4m8 �         RectangleShape2D       
     �A  �A         PackedScene          	         names "   	      Crate 	   position    gravity_scale    linear_damp    RigidBody2D 	   Sprite2D    texture    CollisionShape2D    shape    	   variants       
     �B  B            @@                          node_count             nodes        ��������       ����                                        ����                           ����                   conn_count              conns               node_paths              editable_instances              version             RSRC@3}N2�J/�����RSRC                    PackedScene            ��������                                                  resource_local_to_scene    resource_name    lightmap_size_hint 	   material    custom_aabb    flip_faces    add_uv2    uv2_padding    radius    height    radial_segments    rings    is_hemisphere    script    custom_solver_bias    margin 	   _bundled       Script    res://Ballon Popper/Ballon.gd ��������	   Material /   res://Ballon Popper/assets/Ballon_mat_red.tres :Q��u      local://SphereMesh_jab3i q         local://SphereShape3D_jwxst �         local://PackedScene_e4xhw �         SphereMesh             SphereShape3D             PackedScene          	         names "         Ballon    script    Area3D    Model    material_override    mesh    MeshInstance3D    CollisionShape3D    shape    _on_input_event    input_event    	   variants                                                   node_count             nodes        ��������       ����                            ����                                 ����                   conn_count             conns                
   	                    node_paths              editable_instances              version             RSRCk��GST2   �   �      ����               � �        �  RIFF�  WEBPVP8L�  /������!"2�H�$�n윦���z�x����դ�<����q����F��Z��?&,
ScI_L �;����In#Y��0�p~��Z��m[��N����R,��#"� )���d��mG�������ڶ�$�ʹ���۶�=���mϬm۶mc�9��z��T��7�m+�}�����v��ح�m�m������$$P�����එ#���=�]��SnA�VhE��*JG�
&����^x��&�+���2ε�L2�@��		��S�2A�/E���d"?���Dh�+Z�@:�Gk�FbWd�\�C�Ӷg�g�k��Vo��<c{��4�;M�,5��ٜ2�Ζ�yO�S����qZ0��s���r?I��ѷE{�4�Ζ�i� xK�U��F�Z�y�SL�)���旵�V[�-�1Z�-�1���z�Q�>�tH�0��:[RGň6�=KVv�X�6�L;�N\���J���/0u���_��U��]���ǫ)�9��������!�&�?W�VfY�2���༏��2kSi����1!��z+�F�j=�R�O�{�
ۇ�P-�������\����y;�[ ���lm�F2K�ޱ|��S��d)é�r�BTZ)e�� ��֩A�2�����X�X'�e1߬���p��-�-f�E�ˊU	^�����T�ZT�m�*a|	׫�:V���G�r+�/�T��@U�N׼�h�+	*�*sN1e�,e���nbJL<����"g=O��AL�WO!��߈Q���,ɉ'���lzJ���Q����t��9�F���A��g�B-����G�f|��x��5�'+��O��y��������F��2�����R�q�):VtI���/ʎ�UfěĲr'�g�g����5�t�ۛ�F���S�j1p�)�JD̻�ZR���Pq�r/jt�/sO�C�u����i�y�K�(Q��7őA�2���R�ͥ+lgzJ~��,eA��.���k�eQ�,l'Ɨ�2�,eaS��S�ԟe)��x��ood�d)����h��ZZ��`z�պ��;�Cr�rpi&��՜�Pf��+���:w��b�DUeZ��ڡ��iA>IN>���܋�b�O<�A���)�R�4��8+��k�Jpey��.���7ryc�!��M�a���v_��/�����'��t5`=��~	`�����p\�u����*>:|ٻ@�G�����wƝ�����K5�NZal������LH�]I'�^���+@q(�q2q+�g�}�o�����S߈:�R�݉C������?�1�.��
�ڈL�Fb%ħA ����Q���2�͍J]_�� A��Fb�����ݏ�4o��'2��F�  ڹ���W�L |����YK5�-�E�n�K�|�ɭvD=��p!V3gS��`�p|r�l	F�4�1{�V'&����|pj� ߫'ş�pdT�7`&�
�1g�����@D�˅ �x?)~83+	p �3W�w��j"�� '�J��CM�+ �Ĝ��"���4� ����nΟ	�0C���q'�&5.��z@�S1l5Z��]�~L�L"�"�VS��8w.����H�B|���K(�}
r%Vk$f�����8�ڹ���R�dϝx/@�_�k'�8���E���r��D���K�z3�^���Vw��ZEl%~�Vc���R� �Xk[�3��B��Ğ�Y��A`_��fa��D{������ @ ��dg�������Mƚ�R�`���s����>x=�����	`��s���H���/ū�R�U�g�r���/����n�;�SSup`�S��6��u���⟦;Z�AN3�|�oh�9f�Pg�����^��g�t����x��)Oq�Q�My55jF����t9����,�z�Z�����2��#�)���"�u���}'�*�>�����ǯ[����82һ�n���0�<v�ݑa}.+n��'����W:4TY�����P�ר���Cȫۿ�Ϗ��?����Ӣ�K�|y�@suyo�<�����{��x}~�����~�AN]�q�9ޝ�GG�����[�L}~�`�f%4�R!1�no���������v!�G����Qw��m���"F!9�vٿü�|j�����*��{Ew[Á��������u.+�<���awͮ�ӓ�Q �:�Vd�5*��p�ioaE��,�LjP��	a�/�˰!{g:���3`=`]�2��y`�"��N�N�p���� ��3�Z��䏔��9"�ʞ l�zP�G�ߙj��V�>���n�/��׷�G��[���\��T��Ͷh���ag?1��O��6{s{����!�1�Y�����91Qry��=����y=�ٮh;�����[�tDV5�chȃ��v�G ��T/'XX���~Q�7��+[�e��Ti@j��)��9��J�hJV�#�jk�A�1�^6���=<ԧg�B�*o�߯.��/�>W[M���I�o?V���s��|yu�xt��]�].��Yyx�w���`��C���pH��tu�w�J��#Ef�Y݆v�f5�e��8��=�٢�e��W��M9J�u�}]釧7k���:�o�����Ç����ս�r3W���7k���e�������ϛk��Ϳ�_��lu�۹�g�w��~�ߗ�/��ݩ�-�->�I�͒���A�	���ߥζ,�}�3�UbY?�Ӓ�7q�Db����>~8�]
� ^n׹�[�o���Z-�ǫ�N;U���E4=eȢ�vk��Z�Y�j���k�j1�/eȢK��J�9|�,UX65]W����lQ-�"`�C�.~8ek�{Xy���d��<��Gf�ō�E�Ӗ�T� �g��Y�*��.͊e��"�]�d������h��ڠ����c�qV�ǷN��6�z���kD�6�L;�N\���Y�����
�O�ʨ1*]a�SN�=	fH�JN�9%'�S<C:��:`�s��~��jKEU�#i����$�K�TQD���G0H�=�� �d�-Q�H�4�5��L�r?����}��B+��,Q�yO�H�jD�4d�����0*�]�	~�ӎ�.�"����%
��d$"5zxA:�U��H���H%jس{���kW��)�	8J��v�}�rK�F�@�t)FXu����G'.X�8�KH;���[ C��VcZ�n�9$�[remap]

importer="texture"
type="CompressedTexture2D"
uid="uid://bleyx4vxxnjqk"
path="res://.godot/imported/icon.svg-218a8f2b3041327d8a5756f3a245f83b.ctex"
metadata={
"vram_texture": false
}
 L��y�Ypl~�'jte[remap]

path="res://.godot/exported/133200997/export-72b7163aef70b47b554d95216ff76843-Ballon_mat_red.res"
? T[remap]

path="res://.godot/exported/133200997/export-cc2ee237f78f633ddab8b4044a42eceb-Popple_ballon.scn"
+���*[remap]

path="res://.godot/exported/133200997/export-c51b3f3b65d7a46c091567fe47be63cf-Physics.scn"
9�}�#
%ta�[remap]

path="res://.godot/exported/133200997/export-99beb2a54ed6a5c78f5ff597dba7c64c-Crate.scn"
��I�PB�x.*��[remap]

path="res://.godot/exported/133200997/export-46d1be181c059a635b8ad2c76ae08cde-Ballon.scn"
(�Q�H!7��v�Glist=Array[Dictionary]([])
~�Op�<svg height="128" width="128" xmlns="http://www.w3.org/2000/svg"><rect x="2" y="2" width="124" height="124" rx="14" fill="#363d52" stroke="#212532" stroke-width="4"/><g transform="scale(.101) translate(122 122)"><g fill="#fff"><path d="M105 673v33q407 354 814 0v-33z"/><path fill="#478cbf" d="m105 673 152 14q12 1 15 14l4 67 132 10 8-61q2-11 15-15h162q13 4 15 15l8 61 132-10 4-67q3-13 15-14l152-14V427q30-39 56-81-35-59-83-108-43 20-82 47-40-37-88-64 7-51 8-102-59-28-123-42-26 43-46 89-49-7-98 0-20-46-46-89-64 14-123 42 1 51 8 102-48 27-88 64-39-27-82-47-48 49-83 108 26 42 56 81zm0 33v39c0 276 813 276 813 0v-39l-134 12-5 69q-2 10-14 13l-162 11q-12 0-16-11l-10-65H447l-10 65q-4 11-16 11l-162-11q-12-3-14-13l-5-69z"/><path d="M483 600c3 34 55 34 58 0v-86c-3-34-55-34-58 0z"/><circle cx="725" cy="526" r="90"/><circle cx="299" cy="526" r="90"/></g><g fill="#414042"><circle cx="307" cy="532" r="60"/><circle cx="717" cy="532" r="60"/></g></g></svg>
:�а֍?��   ��˫k��+   res://icon.svg��sQv*   res://Physics Project/PhysicsCharacter.pngZuy!P�    res://Loops Project/Star.png�A�&�,18   res://Physics Project/Crate.png�n6qI   res://Popple_ballon.tscn�n6qI&   res://Ballon Popper/Popple_ballon.tscn:Q��u.   res://Ballon Popper/assets/Ballon_mat_red.tresm�q�Ez�U   res://Ballon.tscn��sQv1   res://Physics Project/Assets/PhysicsCharacter.png�A�&�,18&   res://Physics Project/Assets/Crate.pngZuy!P� #   res://Loops Project/Assets/Star.png[�u�l+�u"   res://Physics Project/Physics.tscn�g'�I��k    res://Physics Project/Crate.tscn�_CECFG      application/config/name         4 Mini-project     application/run/main_scene0      &   res://Ballon Popper/Popple_ballon.tscn     application/config/features$   "         4.1    Forward Plus       application/config/icon         res://icon.svg  9   rendering/textures/canvas_textures/default_texture_filter          J��=T�