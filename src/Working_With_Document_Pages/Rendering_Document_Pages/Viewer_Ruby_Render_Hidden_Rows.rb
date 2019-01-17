# Load the gem
require 'groupdocs_viewer_cloud'
require 'groupdocs_viewer_cloud/models/requests/html_create_pages_cache_request.rb'
require 'groupdocs_viewer_cloud/models/html_options.rb'
require 'groupdocs_viewer_cloud/models/cells_options.rb'
require 'common_utilities/Utils.rb'

class Rendering_Document_Pages
  def self.Render_Hidden_Rows()

    # Getting instance of the API
    api = Common_Utilities.Get_ViewerApi_Instance()

    $cellsOptions = GroupDocsViewerCloud::CellsOptions.new();
    $cellsOptions.render_hidden_rows = true;
    $cellsOptions.render_hidden_columns = true;

    $options = GroupDocsViewerCloud::HtmlOptions.new();
    $file = "with-overflowed-text.xlsx";
    $folder = "";

    $options.cells_options = $cellsOptions;

    $request = GroupDocsViewerCloud::HtmlCreatePagesCacheRequest.new($file);
    $request.folder = $folder;
    $request.storage = $storage_name;
    $request.html_options = $options;

    $response = api.html_create_pages_cache($request);

    puts("Respons: " + ($response).to_s);
  end
end