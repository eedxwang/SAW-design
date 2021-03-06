function varargout = Correlator_ideal_response(varargin)
% CORRELATOR_IDEAL_RESPONSE Application M-file for Correlator_ideal_response.fig
%    FIG = CORRELATOR_IDEAL_RESPONSE launch Correlator_ideal_response GUI.
%    CORRELATOR_IDEAL_RESPONSE('callback_name', ...) invoke the named callback.

% Last Modified by GUIDE v2.0 11-Aug-2002 21:12:39

if nargin == 0  % LAUNCH GUI

	fig = openfig(mfilename,'reuse');

	% Use system color scheme for figure:
	set(fig,'Color',get(0,'defaultUicontrolBackgroundColor'));

	% Generate a structure of handles to pass to callbacks, and store it. 
	handles = guihandles(fig);
	guidata(fig, handles);

	if nargout > 0
		varargout{1} = fig;
	end

elseif ischar(varargin{1}) % INVOKE NAMED SUBFUNCTION OR CALLBACK

	try
		[varargout{1:nargout}] = feval(varargin{:}); % FEVAL switchyard
	catch
		disp(lasterr);
	end

end


%| ABOUT CALLBACKS:
%| GUIDE automatically appends subfunction prototypes to this file, and 
%| sets objects' callback properties to call them through the FEVAL 
%| switchyard above. This comment describes that mechanism.
%|
%| Each callback subfunction declaration has the following form:
%| <SUBFUNCTION_NAME>(H, EVENTDATA, HANDLES, VARARGIN)
%|
%| The subfunction name is composed using the object's Tag and the 
%| callback type separated by '_', e.g. 'slider2_Callback',
%| 'figure1_CloseRequestFcn', 'axis1_ButtondownFcn'.
%|
%| H is the callback object's handle (obtained using GCBO).
%|
%| EVENTDATA is empty, but reserved for future use.
%|
%| HANDLES is a structure containing handles of components in GUI using
%| tags as fieldnames, e.g. handles.figure1, handles.slider2. This
%| structure is created at GUI startup using GUIHANDLES and stored in
%| the figure's application data using GUIDATA. A copy of the structure
%| is passed to each callback.  You can store additional information in
%| this structure at GUI startup, and you can change the structure
%| during callbacks.  Call guidata(h, handles) after changing your
%| copy to replace the stored original so that subsequent callbacks see
%| the updates. Type "help guihandles" and "help guidata" for more
%| information.
%|
%| VARARGIN contains any extra arguments you have passed to the
%| callback. Specify the extra arguments by editing the callback
%| property in the inspector. By default, GUIDE sets the property to:
%| <MFILENAME>('<SUBFUNCTION_NAME>', gcbo, [], guidata(gcbo))
%| Add any extra arguments after the last argument, before the final
%| closing parenthesis.



% --------------------------------------------------------------------
function varargout = radiobutton1_Callback(h, eventdata, handles, varargin)
% Stub for Callback of the uicontrol handles.radiobutton1.
set(handles.radiobutton1, 'Value', 1);
set(handles.radiobutton2, 'Value', 0);
set(handles.radiobutton3, 'Value', 0);
set(handles.radiobutton4, 'Value', 0);
set(handles.radiobutton5, 'Value', 0);


% --------------------------------------------------------------------
function varargout = radiobutton2_Callback(h, eventdata, handles, varargin)
% Stub for Callback of the uicontrol handles.radiobutton2.
set(handles.radiobutton1, 'Value', 0);
set(handles.radiobutton2, 'Value', 2);
set(handles.radiobutton3, 'Value', 0);
set(handles.radiobutton4, 'Value', 0);
set(handles.radiobutton5, 'Value', 0);



% --------------------------------------------------------------------
function varargout = radiobutton3_Callback(h, eventdata, handles, varargin)
% Stub for Callback of the uicontrol handles.radiobutton3.
set(handles.radiobutton1, 'Value', 0);
set(handles.radiobutton2, 'Value', 0);
set(handles.radiobutton3, 'Value', 3);
set(handles.radiobutton4, 'Value', 0);
set(handles.radiobutton5, 'Value', 0);



% --------------------------------------------------------------------
function varargout = radiobutton4_Callback(h, eventdata, handles, varargin)
% Stub for Callback of the uicontrol handles.radiobutton4.
set(handles.radiobutton1, 'Value', 0);
set(handles.radiobutton2, 'Value', 0);
set(handles.radiobutton3, 'Value', 0);
set(handles.radiobutton4, 'Value', 4);
set(handles.radiobutton5, 'Value', 0);



% --------------------------------------------------------------------
function varargout = radiobutton5_Callback(h, eventdata, handles, varargin)
% Stub for Callback of the uicontrol handles.radiobutton5.
set(handles.radiobutton1, 'Value', 0);
set(handles.radiobutton2, 'Value', 0);
set(handles.radiobutton3, 'Value', 0);
set(handles.radiobutton4, 'Value', 0);
set(handles.radiobutton5, 'Value', 5);



% --------------------------------------------------------------------
function varargout = edit1_Callback(h, eventdata, handles, varargin)
% Stub for Callback of the uicontrol handles.edit1.



% --------------------------------------------------------------------
function varargout = edit2_Callback(h, eventdata, handles, varargin)
% Stub for Callback of the uicontrol handles.edit2.



% --------------------------------------------------------------------
function varargout = edit3_Callback(h, eventdata, handles, varargin)
% Stub for Callback of the uicontrol handles.edit3.



% --------------------------------------------------------------------
function varargout = edit4_Callback(h, eventdata, handles, varargin)
% Stub for Callback of the uicontrol handles.edit4.



% --------------------------------------------------------------------
function varargout = pushbutton1_Callback(h, eventdata, handles, varargin)
% Stub for Callback of the uicontrol handles.pushbutton1.
set(0,'ShowHiddenHandles','on');
% Binary input check
binary_string= get(handles.edit4, 'String');
binary_string = strrep(binary_string,'0','1'); % to get rid of the problem of leading zeros convert all zeros to ones

convert_dec= bin2dec(binary_string);
convert_binary= dec2bin(convert_dec);
convert_binary_string = num2str(convert_binary);
Is_binary= strcmp(binary_string, convert_binary_string);
% Error check
if (isempty(str2num(get(handles.edit1, 'String'))) + isempty(str2num(get(handles.edit2, 'String')))...
   + isempty(str2num(get(handles.edit3, 'String')))+ isempty(str2num(get(handles.edit4, 'String')))) ~=0 |...
(get(handles.radiobutton1,'value') + get(handles.radiobutton2,'value')...
    +get(handles.radiobutton3,'value')+ get(handles.radiobutton4,'value') + get(handles.radiobutton5,'value'))== 0 ...
 |Is_binary ~= 1 |   str2num(get(handles.edit3, 'String')) ~= length(get(handles.edit4, 'String')) 

In_Err_Corr_ideal_response;

else
    substrate= get(handles.radiobutton1,'value') + get(handles.radiobutton2,'value')...
    +get(handles.radiobutton3,'value')+ get(handles.radiobutton4,'value') + get(handles.radiobutton5,'value');
    
    fo = str2num(get(handles.edit1, 'String'));
    code_length=str2num(get(handles.edit3, 'String'));
    code_sequence=get(handles.edit4, 'String');
    Cycles_perchip = str2num(get(handles.edit2, 'String'));
    
    
    [time,magnitude,substrate_name,electrode_width,finger_pairs]= SAW_correlator_no_temp_diff(substrate, fo, Cycles_perchip, code_length, code_sequence ); 
    
  set(0,'ShowHiddenHandles','off');     
end


% --------------------------------------------------------------------
function varargout = pushbutton2_Callback(h, eventdata, handles, varargin)
% Stub for Callback of the uicontrol handles.pushbutton2.
delete(handles.figure1);





% --------------------------------------------------------------------
function varargout = pushbutton3_Callback(h, eventdata, handles, varargin)
% Stub for Callback of the uicontrol handles.pushbutton3.
set(handles.figure1,'PaperPositionMode','auto');
h=handles.figure1;
print(h);