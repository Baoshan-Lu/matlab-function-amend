function drawdata(varargin)
%用途：用于一次性多条线绘图，改良plot函数，便于实际仿真处理
%  输入参数: x_data,y_data,x_lable,y_lable,legend_str,makersize,linewidth,FontSize,FileName,FigFormat,FigurePath
%  必选参数: x_data,y_data,x_lable,y_lable,legend_str
%  可选参数: makersize,linewidth,FontSize,FileName,FigFormat,FigurePath
%  注意事项:  x_data: 为一行数据   
%            y_data: 为多行数据，一行代表一个实例的y坐标
%作者：Baoshan Lu
%时间：2019-09-09
%版本：0.1



maker={'-or', '->b', '-sg',  '-pk','-<y', '-dm', '--hb','--or', '-->b', '--sg',  '--pk','--<y', '--dm','--<r', '--ob', '--hg',  '--sk','-->y', '--m'};

formatOut = 'yy_mm_dd';
SimuTimeHistory=datestr(now,formatOut);

err=0;

if nargin<5
    err=1;
    error('参数太少！');
    
elseif nargin==5  % nargin 表示参数个数
    
    x_data=varargin{1};
    y_data=varargin{2};
    x_lable=varargin{3};
    y_lable=varargin{4};
    legend_str=varargin{5};
    
    makersize=8 ;
    linewidth=1.2;
    FontSize=13;
    
    FileName=SimuTimeHistory; %默认存储文件名
    FigFormat='.fig';
    FigurePath=['默认图片存储\',SimuTimeHistory,'\'];
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
    FileName=SimuTimeHistory; %默认存储文件名
    FigFormat='.fig';
    FigurePath=['默认图片存储\',SimuTimeHistory,'\'];
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
    FileName=SimuTimeHistory; %默认存储文件名
    FigFormat='.fig';
    FigurePath=['默认图片存储\',SimuTimeHistory,'\'];
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
    FileName=SimuTimeHistory; %默认存储文件名
    FigFormat='.fig';
    FigurePath=['默认图片存储\',SimuTimeHistory,'\'];
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
    FigurePath=['默认图片存储\',SimuTimeHistory,'\'];
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
    FigurePath=['默认图片存储\',SimuTimeHistory,'\'];
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
    error('输入参数过多了！');
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
