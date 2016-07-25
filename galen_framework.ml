external load : string -> unit = "load" [@@bs.call]

type driver

external create_driver : ?url:string -> ?browser_size:string ->
  ?browser_type:string -> unit -> driver = "createDriver"
[@@bs.call]

type settings_create_grid_driver

type desired_capabilities

external create_settings_grid_driver :
  ?browser:string ->
  ?browserVersion:string ->
  ?platform:string ->
  ?size:string ->
  ?desired_capabilities:desired_capabilities ->
  unit ->
  unit = ""
  [@@bs.obj]

external resize : driver -> string -> unit = "resize" [@@bs.call]

external check_layout :
  driver ->
  string ->
  ?tags_to_include:string list ->
  ?tags_to_exclude:string list ->
  unit ->
  unit = "checkLayout"
  [@@bs.call]

(* Java Properties object. Needs a complete binding. *)
type java_properties

external layout_properties :
  string ->
  java_properties = "layoutProperties"
  [@@bs.call]

external read_file :
  string ->
  string = "readFile"
  [@@bs.call]

external make_directory :
  string ->
  bool = "makeDirectory"
  [@@bs.call]

external file_exists :
  string ->
  bool = "fileExists"
  [@@bs.call]

external is_directory :
  string ->
  bool = "isDirectory"
  [@@bs.call]

(* let d = retry 5 (fun i -> create_driver ()) *)
external retry :
  int ->
  (int -> 'a) ->
  'a = "retry"
  [@@bs.call]

type java_file

external take_screenshot :
  driver ->
  java_file = "takeScreenshot"
  [@@bs.call]

external cookie :
  driver ->
  string ->
  unit = "cookie"
  [@@bs.call]

external inject :
  driver ->
  string ->
  unit = "inject"
  [@@bs.call]

type data_provider

external create_test_data_provider :
  string ->
  data_provider = "createTestDataProvider"
  [@@bs.call]

type settings_dump_page

external create_setting_dump_page :
  ?driver:driver ->
  ?name:string ->
  ?spec:string ->
  ?exportPath:string ->
  ?maxWidth:int ->
  ?maxHeight:int ->
  ?onlyImages:bool ->
  ?excludedObjects:string list ->
  unit ->
  settings_dump_page = ""
  [@@bs.obj]

external dump_page :
  settings_dump_page ->
  unit = "dumpPage"
  [@@bs.call]
