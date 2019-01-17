# Load the gem
require 'groupdocs_viewer_cloud'
require 'groupdocs_viewer_cloud/models/requests/image_transform_pages_request.rb'
require 'groupdocs_viewer_cloud/models/reorder_options.rb'
require 'common_utilities/Utils.rb'

class Rendering_Document_Pages
  def self.Reorder_Page_Image()

    # Getting instance of the API
    api = Common_Utilities.Get_ViewerApi_Instance()

    $options = GroupDocsViewerCloud::ReorderOptions.new();
    $options.page_number = 1;
    $options.new_position = 2;

    $file = "sample.docx";
    $folder = "viewerdocs";

    $request = GroupDocsViewerCloud::ImageTransformPagesRequest.new($file, $options);
    $request.folder = $folder;
    $request.storage = $storage_name;

    $response = api.image_transform_pages($request);

    puts("Respons: " + ($response).to_s);
  end
end