function packageMyToolbox(toolboxOpts,opts)
arguments
    toolboxOpts = pokerHandToolboxDefinition();
    opts.DisplayOutputFilePath = true;
end

% Create the destination directory, if it doesn't exist.
destFolder = fileparts(toolboxOpts.OutputFile);
if ~isfolder(destFolder)
    mkdir(destFolder);
end

% Package toolbox
matlab.addons.toolbox.packageToolbox(toolboxOpts);

% Display a nice message of the created file path
if opts.DisplayOutputFilePath
    relativePath = erase(toolboxOpts.OutputFile,string(pwd)+filesep);
    disp("Created """ + relativePath + """");
end

end

