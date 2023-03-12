clear;
close all;
clc;
display("Prepare Directory.")
input_directory_name = "";
if isfolder(input_directory_name)
	output_directory_name = "";
	if ~isfolder(output_directory_name);
		mkdir(output_directory_name);
	end
	input_files = dir([input_directory_name,'*wav']);
	files_length = length(input_files);
	for index = 1:files_length
		input_file_name = input_files(index);
		word_positions = strfind(input_file_name, '_');
		word_name = lower(input_files_name(1:word_positions(1)));
		if ~isfolder([output_directory_name,word_name])
			mkdir([output_directory_name,word_name])
		end
		copyfile([input_directory_name, input_file_name],[output_directory_name,word_name])
	end
display("Preparation done.")
else
	display("Input directory does not exist!");	
end