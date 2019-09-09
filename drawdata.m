function drawdata(varargin)
%��;������һ���Զ����߻�ͼ������plot����������ʵ�ʷ��洦��
%  �������: x_data,y_data,x_lable,y_lable,legend_str,makersize,linewidth,FontSize,FileName,FigFormat,FigurePath
%  ��ѡ����: x_data,y_data,x_lable,y_lable,legend_str
%  ��ѡ����: makersize,linewidth,FontSize,FileName,FigFormat,FigurePath
%  ע������:  x_data: Ϊһ������   
%            y_data: Ϊ�������ݣ�һ�д���һ��ʵ����y����
%���ߣ�Baoshan Lu
%ʱ�䣺2019-09-09
%�汾��0.1



maker={'-or', '->b', '-sg',  '-pk','-<y', '-dm', '--hb','--or', '-->b', '--sg',  '--pk','--<y', '--dm','--<r', '--ob', '--hg',  '--sk','-->y', '--m'};

formatOut = 'yy_mm_dd';
SimuTimeHistory=datestr(now,formatOut);

err=0;

if nargin<5
    err=1;
    error('����̫�٣�');
    
elseif nargin==5  % nargin ��ʾ��������
    
    x_data=varargin{1};
    y_data=varargin{2};
    x_lable=varargin{3};
    y_lable=varargin{4};
    legend_str=varargin{5};
    
    makersize=8 ;
    linewidth=1.2;
    FontSize=13;
    
    FileName=SimuTimeHistory; %Ĭ�ϴ洢�ļ���
    FigFormat='.fig';
    FigurePath=['Ĭ��ͼƬ�洢\',SimuTimeHistory,'\'];
    if  ~exist(FigurePath)
        mkdir(FigurePath);
    end
    
elseif nargin==6
    x_data=varargin{1};
    y_data=varargin{2};
    x_lable=varargin{3};
    y_lable=varargin{4};
    legend_str=varargin{5};
    makersize=varargin{6};
    
    linewidth=1.2;
    FontSize=13;
    FileName=SimuTimeHistory; %Ĭ�ϴ洢�ļ���
    FigFormat='.fig';
    FigurePath=['Ĭ��ͼƬ�洢\',SimuTimeHistory,'\'];
    if  ~exist(FigurePath)
        mkdir(FigurePath);
    end
elseif nargin==7
    x_data=varargin{1};
    y_data=varargin{2};
    x_lable=varargin{3};
    y_lable=varargin{4};
    legend_str=varargin{5};
    makersize=varargin{6};
    linewidth=varargin{7};
    
    FontSize=13;
    FileName=SimuTimeHistory; %Ĭ�ϴ洢�ļ���
    FigFormat='.fig';
    FigurePath=['Ĭ��ͼƬ�洢\',SimuTimeHistory,'\'];
    if  ~exist(FigurePath)
        mkdir(FigurePath);
    end
    
elseif nargin==8
    x_data=varargin{1};
    y_data=varargin{2};
    x_lable=varargin{3};
    y_lable=varargin{4};
    legend_str=varargin{5};
    makersize=varargin{6};
    linewidth=varargin{7};
    FontSize=varargin{8};
    FileName=SimuTimeHistory; %Ĭ�ϴ洢�ļ���
    FigFormat='.fig';
    FigurePath=['Ĭ��ͼƬ�洢\',SimuTimeHistory,'\'];
    if  ~exist(FigurePath)
        mkdir(FigurePath);
    end
    
elseif nargin==9
    x_data=varargin{1};
    y_data=varargin{2};
    x_lable=varargin{3};
    y_lable=varargin{4};
    legend_str=varargin{5};
    makersize=varargin{6};
    linewidth=varargin{7};
    FontSize=varargin{8};
    FileName=varargin{9};
    FigFormat='.fig';
    FigurePath=['Ĭ��ͼƬ�洢\',SimuTimeHistory,'\'];
    if  ~exist(FigurePath)
        mkdir(FigurePath);
    end
    
elseif nargin==10
    x_data=varargin{1};
    y_data=varargin{2};
    x_lable=varargin{3};
    y_lable=varargin{4};
    legend_str=varargin{5};
    makersize=varargin{6};
    linewidth=varargin{7};
    FontSize=varargin{8};
    FileName=varargin{9};
    FigFormat=varargin{10};
    FigurePath=['Ĭ��ͼƬ�洢\',SimuTimeHistory,'\'];
    if  ~exist(FigurePath)
        mkdir(FigurePath);
    end
    
elseif nargin==11
    x_data=varargin{1};
    y_data=varargin{2};
    x_lable=varargin{3};
    y_lable=varargin{4};
    legend_str=varargin{5};
    makersize=varargin{6};
    linewidth=varargin{7};
    FontSize=varargin{8};
    FileName=varargin{9};
    FigFormat=varargin{10};
    FigurePath=varargin{11};
    
elseif  nargin>11
    err=1;
    error('������������ˣ�');
end

if   err==0
    figure
    for i=1:size(y_data,1)
        plot(x_data,y_data(i,:),maker{1,i},'linewidth',linewidth,'MarkerSize',makersize)
        hold on
    end
    xlabel({x_lable},'FontName','Times New Roman','FontSize',FontSize);
    ylabel({y_lable},'FontName','Times New Roman','FontSize',FontSize);
    
    s2=legend(legend_str,0);
    set(s2,'FontName','Times New Roman','FontSize',FontSize);
    
    grid on
    
    saveas(gcf,[FigurePath FileName FigFormat]);
    
end
