# Load the gem
require 'groupdocs_viewer_cloud'
require 'common_utilities/Utils.rb'

class Working_With_Document_Information
  def self.Viewer_Ruby_Get_Info_With_Image_View_Format(*format)

    # Getting instance of the API
    $api = Common_Utilities.Get_InfoApi_Instance()

    $viewOptions = GroupDocsViewerCloud::ViewOptions.new()

    $fileInfo = GroupDocsViewerCloud::FileInfo.new()
    $fileInfo.file_path = "viewerdocs/one-page.docx"
    $fileInfo.password = ""
    $fileInfo.storage_name = $myStorage

    $viewOptions.file_info = $fileInfo;
    $viewOptions.view_format = format[0]
    
    $request = GroupDocsViewerCloud::GetInfoRequest.new($viewOptions)
    $response = $api.get_info($request)

    puts("Expected response type is InfoResult: " + ($response).to_s)
  end
end