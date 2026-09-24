
--[[
Semantically equivalent reconstruction of:
  @F:/minichina/AssetRuntime/CommonResource/Assets/../Script/luascript/ugc/framework/api/DevApiCfg.lua

Recovered from the supplied LuaJIT bytecode dump (ESC LJ, bytecode version 2).
The original comments, whitespace, local variable names, and exact table-construction syntax
are not present in bytecode and therefore cannot be recovered verbatim.

This reconstruction preserves the four globals built by the chunk and all final table data:
  DevApiMType, DevApiRType, DevApiEnvType, DevApiCfg
No dynamic calls or external side effects occur in the supplied chunk.
--]]

DevApiMType = {  -- 开发者API调用模式枚举
    ClientData = 5,  -- 客户端数据模式（仅客户端）
    SyncPack = 4,  -- 同步数据包模式
    Sync = 3,  -- 同步模式（服务器同步到客户端）
    NoBlock = 2,  -- 非阻塞模式（异步，不等待返回）
    Block = 1,  -- 阻塞模式（同步等待返回）
    Normal = 0,  -- 普通模式
    Mod = 9,  -- 模组模式（Mod侧调用）
    BoardCast = 8,  -- 广播模式（广播给所有客户端）
    HostAndClient = 7,  -- 主机与客户端模式
    ReportHost = 6,  -- 上报主机模式
}

DevApiRType = {  -- 开发者API返回类型/限制枚举
    TimeLimit = 4,  -- 时间限制（超时）
    WhiteList = 3,  -- 白名单限制
    Uin_TimeLimit = 2,  -- 按玩家UIN(QQ号)时间限制
    ResendMsg = 7,  -- 重发消息限制
    ResetCompareParam = 6,  -- 重置比较参数
    CompareParam = 5,  -- 比较参数
}

DevApiEnvType = {  -- 开发者API环境类型枚举
    Motion = 3,  -- 动作环境
    Client = 2,  -- 客户端环境
    Host = 1,  -- 主机环境
}

DevApiCfg = {  -- 开发者API配置表（接口白名单配置）
    gameObject = {  -- 游戏对象接口列表
        "GetId",  -- 获取对象ID
        "Destroy",  -- 销毁对象
        "AddTag",  -- 添加标签
        "RemoveTag",  -- 移除标签
        "HasTag",  -- 是否拥有标签
        "GetObjType",  -- 获取对象类型
        "IsValid",  -- 对象是否有效
        "GetWorldId",  -- 获取世界ID
        "PushEvent",  -- 推送事件(异步)
        "PushEventSync",  -- 推送事件(同步)
        "PushCustomEvent",  -- 推送自定义事件(异步)
        "PushCustomEventSync",  -- 推送自定义事件(同步)
        "PushCloudServerMsg",  -- 推送云服务器消息
        "AddCustomEvent",  -- 添加自定义事件监听
        "AddEvent",  -- 添加事件监听
        "AddCloudSeverEvent",  -- 添加云服务器事件监听
        "RemoveEvent",  -- 移除事件监听
        "RemoveCustomEvent",  -- 移除自定义事件监听
        "RemoveTriggerEvent",  -- 移除触发器事件监听
        "RemoveCloudSeverEvent",  -- 移除云服务器事件监听
        "SaveInChunk",  -- 保存到区块中
        "DoTaskInTime",  -- 定时执行任务
        "DoPeriodicTask",  -- 周期执行任务
        "ClearTaskByCmp",  -- 清除组件相关任务
        "SetTaskIsPauseByCmp",  -- 设置组件任务暂停状态
        "SetEventIsEnable",  -- 设置事件是否启用
        "IsEventEnable",  -- 事件是否已启用
        "SetComponentIndex",  -- 设置组件索引
        "HasComponent",  -- 是否拥有组件
        "GetWorldId",  -- 获取世界ID
    },
    worldObject = {  -- 世界对象接口列表
        "GetObjType",  -- 获取对象类型
        "GetId",  -- 获取对象ID
        "IsValid",  -- 对象是否有效
        "PushEvent",  -- 推送事件(异步)
        "PushEventSync",  -- 推送事件(同步)
        "PushCustomEvent",  -- 推送自定义事件(异步)
        "PushCustomEventSync",  -- 推送自定义事件(同步)
        "PushCloudServerMsg",  -- 推送云服务器消息
        "AddCustomEvent",  -- 添加自定义事件监听
        "AddEvent",  -- 添加事件监听
        "AddTriggerEvent",  -- 添加触发器事件监听
        "AddCloudSeverEvent",  -- 添加云服务器事件监听
        "RemoveEvent",  -- 移除事件监听
        "RemoveCustomEvent",  -- 移除自定义事件监听
        "RemoveTriggerEvent",  -- 移除触发器事件监听
        "RemoveCloudSeverEvent",  -- 移除云服务器事件监听
        "DoTaskInTime",  -- 定时执行任务
        "DoPeriodicTask",  -- 周期执行任务
        "ClearTaskByCmp",  -- 清除组件相关任务
        "SetTaskIsPauseByCmp",  -- 设置组件任务暂停状态
        "SetComponentIndex",  -- 设置组件索引
        "SetEventIsEnable",  -- 设置事件是否启用
        "IsEventEnable",  -- 事件是否已启用
        "HasComponent",  -- 是否拥有组件
        "GetWorldId",  -- 获取世界ID
    },
    BlockObject = {  -- 方块对象接口列表
        "GetObjType",  -- 获取对象类型
        "GetId",  -- 获取对象ID
        "GetResId",  -- 获取资源ID
        "SetComponentIndex",  -- 设置组件索引
        "IsValid",  -- 对象是否有效
        "PushEvent",  -- 推送事件(异步)
        "PushEventSync",  -- 推送事件(同步)
        "PushCustomEvent",  -- 推送自定义事件(异步)
        "PushCustomEventSync",  -- 推送自定义事件(同步)
        "PushCloudServerMsg",  -- 推送云服务器消息
        "AddCustomEvent",  -- 添加自定义事件监听
        "AddEvent",  -- 添加事件监听
        "AddCloudSeverEvent",  -- 添加云服务器事件监听
        "RemoveEvent",  -- 移除事件监听
        "RemoveCustomEvent",  -- 移除自定义事件监听
        "RemoveCloudSeverEvent",  -- 移除云服务器事件监听
        "HasComponent",  -- 是否拥有组件
        "SetEventIsEnable",  -- 设置事件是否启用
        "IsEventEnable",  -- 事件是否已启用
        "DoTaskInTime",  -- 定时执行任务
        "DoPeriodicTask",  -- 周期执行任务
        "ClearTaskByCmp",  -- 清除组件相关任务
        "SetTaskIsPauseByCmp",  -- 设置组件任务暂停状态
        "GetBlockData",  -- 获取方块数据
        "SetBlockData",  -- 设置方块数据
        "PlayAnim",  -- 播放动画
        "SetTexture",  -- 设置贴图
        "ShowModel",  -- 显示模型
        "IsShowModel",  -- 是否显示模型
        "SetOverlayColor",  -- 设置覆盖颜色
        "SetCallbackCanPutOntoPos",  -- 设置回调-能否放在该位置
        "SetCallbackCanPutOntoPlayer",  -- 设置回调-能否放在玩家身上
        "DisableNonCoreBlockTick",  -- 禁用非核心方块Tick更新
        "RegisterUsedKeys",  -- 注册使用的按键
        "SetCollideCheckInterval",  -- 设置碰撞检测间隔
        "ChangeImportModelRunning",  -- 切换导入模型的运行状态
        "SetUVAnimSwitch",  -- 设置UV动画开关
        "SetParticleEffectAsyns",  -- 设置粒子特效异步加载
        "GetTransferGateId",  -- 获取传送门ID
        "RegisterContainerType",  -- 注册容器类型
        "setChangeColorAnim",  -- 设置变色动画
        "ModOnDestroyContainer",  -- 模组销毁容器时的回调
        "CheckPosCallPlace",  -- 检查位置是否可以放置
        "SetCallbackCreateCollideData",  -- 设置回调-创建碰撞数据
        "SetCallbackGetPhisicMesh",  -- 设置回调-获取物理网格
    },
    services = {  -- 服务模块配置列表（内部引擎服务）
        Log = {  -- 日志模块
            ix = 1,  -- 模块序号
            dismethods = {
                "PrintDevLog",  -- 打印开发者日志 ☠️[ban]
                "PrintLog",  -- 打印日志 ☠️[ban]
                "DealLog",  -- 处理日志 ☠️[ban]
                "PcallErrorInfo",  -- 获取Pcall错误信息 ☠️[ban]
                "GetStrFromLine",  -- 从文本行获取字符串 ☠️[ban]
                "PcallError",  -- 输出Pcall错误 ☠️[ban]
                "IsOpenLog",  -- 日志是否开启 ☠️[ban]
                "ModLoad",  -- 模组加载日志 ☠️[ban]
                "PrintRunInfo",  -- 打印运行信息 ☠️[ban]
            },
        },
        GameObject = {  -- 游戏对象模块
            ix = 2,  -- 模块序号
            dismethods = {
                "CreateGameObject",  -- 创建游戏对象 ☠️[ban]
                "CreateEditActor",  -- 创建编辑器角色 ☠️[ban]
                "CreateGameObjectDefault",  -- 创建默认游戏对象 ☠️[ban]
                "FindGameObject",  -- 查找游戏对象 ☠️[ban]
                "GetWorldObject",  -- 获取世界对象 ☠️[ban]
                "CreatePrefabInstObject",  -- 创建预制体实例对象 ☠️[ban]
                "PushCustomEvent",  -- 推送自定义事件(异步) ☠️[ban]
                "CreatePrefabObject",  -- 创建预制体对象 ☠️[ban]
            },
            methods = {},
        },
        Data = {  -- 数据模块
            ix = 3,  -- 模块序号
            methods = {
                {
                    "DoPackBluePrint",  -- 打包蓝图数据 🟡[权限不足]
                    0,
                    {
                        [3] = "LuaApi3_InternalApi",  -- 内部API
                    },
                },
            },
            dismethods = {},
            items = {
                Array = {  -- 数组模块
                    dismethods = {},
                },
                Map = {  -- 表(键值对)模块
                    dismethods = {},
                    methods = {
                        {
                            "SetValueAndBlock",  -- 设置值并阻塞 🟢
                            1,
                        },
                        {
                            "RemoveValueAndBlock",  -- 移除值并阻塞 🟢
                            1,
                        },
                        {
                            "GetValueAndBlock",  -- 获取值并阻塞 🟢
                            1,
                        },
                        {
                            "GetIndexValueAndBlock",  -- 获取索引值并阻塞 🟢
                            1,
                        },
                        {
                            "SetRankValueAndBlock",  -- 设置排名值并阻塞 🟢
                            1,
                        },
                        {
                            "IncreasesRankValueAndBlock",  -- 增加排名值并阻塞 🟢
                            1,
                        },
                    },
                },
                Table = {  -- 二维表模块
                    dismethods = {},
                },
            },
        },
        Area = {  -- 区域模块
            ix = 6,  -- 模块序号
            dismethods = {
                "GetObjInstanceID",  -- 获取对象实例ID ☠️[ban]
            },
            methods = {},
        },
        Item = {  -- 道具模块
            ix = 7,  -- 模块序号
            dismethods = {
                "_BeginModifyItem",  -- 开始修改道具(内部) ☠️[ban]
                "_BeginModifyItemByGridIndex",  -- 按格子索引开始修改道具(内部) ☠️[ban]
            },
            methods = {
                {
                    "GetGunBaseDesc",  -- 获取枪械基础描述 🟡[权限不足]
                    0,
                    {
                        [3] = "LuaApi3_Item_GetGunBaseDesc",  -- 道具模块-获取枪械基础描述
                    },
                },
                {
                    "CreateItemInstInBackpack",  -- 在背包创建道具实例 ✅(文档包含同名:Backpack)
                    0,
                    {
                        [3] = "LuaApi3_InternalApi",  -- 内部API
                    },
                },
                {
                    "SetObjData",  -- 设置对象数据 🟡[权限不足]
                    0,
                    {
                        [3] = "LuaApi3_InternalApi",  -- 内部API
                    },
                },
                {
                    "GetObjData",  -- 获取对象数据 🟡[权限不足]
                    0,
                    {
                        [3] = "LuaApi3_InternalApi",  -- 内部API
                    },
                },
                {
                    "GetItemModelComp",  -- 获取道具模型组件 🟡[权限不足]
                    0,
                    {
                        [3] = "LuaApi3_InternalApi",  -- 内部API
                    },
                },
                {
                    "GetObjDataByGrid",  -- 按格子获取对象数据 🟡[权限不足]
                    0,
                    {
                        [3] = "LuaApi3_InternalApi",  -- 内部API
                    },
                },
                {
                    "SetObjDataByGrid",  -- 按格子设置对象数据 🟡[权限不足]
                    0,
                    {
                        [3] = "LuaApi3_InternalApi",  -- 内部API
                    },
                },
                {
                    "CreateBindItemInBackpack",  -- 在背包创建绑定道具 🟡[权限不足]
                    0,
                    {
                        [3] = "LuaApi3_Item_CreateBindItemInBackpack",  -- 道具模块-在背包创建绑定道具
                    },
                },
                {
                    "IsBindItem",  -- 是否为绑定道具 🟡[权限不足]
                    0,
                    {
                        [3] = "LuaApi3_Item_IsBindItem",  -- 道具模块-判断是否绑定道具
                    },
                },
                {
                    "LevelUpEquipOrGunForPlayer",  -- 为玩家升级装备或枪械 🟡[权限不足]
                    0,
                    {
                        [3] = "LuaApi3_InternalApi",  -- 内部API
                    },
                },
                {
                    "FreshPowerEquipOrGunForPlayer",  -- 为玩家刷新装备/枪械能量 🟡[权限不足]
                    0,
                    {
                        [3] = "LuaApi3_InternalApi",  -- 内部API
                    },
                },
                {
                    "EmpowerEquipOrGunForPlayer",  -- 为玩家充能装备/枪械 🟡[权限不足]
                    0,
                    {
                        [3] = "LuaApi3_InternalApi",  -- 内部API
                    },
                },
            },
        },
        Block = {  -- 方块模块
            ix = 8,  -- 模块序号
            methods = {
                {
                    "SetBlockTextureColor",  -- 设置方块贴图颜色 ✅(文档包含)
                    8,
                },
                {
                    "CreateObsBluePrint",  -- 创建方块蓝图 🟡[权限不足]
                    0,
                    {
                        [3] = "LuaApi3_InternalApi",  -- 内部API
                    },
                },
                {
                    "PlaceBluePrint",  -- 放置蓝图 🟡[权限不足]
                    0,
                    {
                        [3] = "LuaApi3_InternalApi",  -- 内部API
                    },
                },
                {
                    "UnbindBluePrintRegion",  -- 解除蓝图区域绑定 🟡[权限不足]
                    0,
                    {
                        [3] = "LuaApi3_InternalApi",  -- 内部API
                    },
                },
                {
                    "SaveBluePrintRegionData",  -- 保存蓝图区域数据 🟡[权限不足]
                    0,
                    {
                        [3] = "LuaApi3_InternalApi",  -- 内部API
                    },
                },
                {
                    "BluePrintSaveAsNewId",  -- 蓝图另存为新ID 🟡[权限不足]
                    0,
                    {
                        [3] = "LuaApi3_InternalApi",  -- 内部API
                    },
                },
                {
                    "BluePrintSetUploadInteral",  -- 设置蓝图上传间隔 🟡[权限不足]
                    0,
                    {
                        [3] = "LuaApi3_InternalApi",  -- 内部API
                    },
                },
                {
                    "DeleteBluePrint",  -- 删除蓝图 🟡[权限不足]
                    0,
                    {
                        [3] = "LuaApi3_InternalApi",  -- 内部API
                    },
                },
                {
                    "GetBluePrintBlockInfo",  -- 获取蓝图方块信息 🟡[权限不足]
                    0,
                    {
                        [3] = "LuaApi3_InternalApi",  -- 内部API
                    },
                },
                {
                    "CaptureAndUploadScreenshot",  -- 截屏并上传 🟡[权限不足]
                    3,
                    {
                        [3] = "LuaApi3_InternalApi",  -- 内部API
                    },
                },
                {
                    "LoadObsBluePrint",  -- 加载方块蓝图 🟡[权限不足]
                    0,
                    {
                        [3] = "LuaApi3_InternalApi",  -- 内部API
                    },
                },
                {
                    "UnloadObsBluePrint",  -- 卸载方块蓝图 🟡[权限不足]
                    0,
                    {
                        [3] = "LuaApi3_InternalApi",  -- 内部API
                    },
                },
                {
                    "StopPlaceObsBluePrint",  -- 停止放置方块蓝图 🟡[权限不足]
                    0,
                    {
                        [3] = "LuaApi3_InternalApi",  -- 内部API
                    },
                },
                {
                    "GetObsBluePrintStatus",  -- 获取方块蓝图状态 🟡[权限不足]
                    0,
                    {
                        [3] = "LuaApi3_InternalApi",  -- 内部API
                    },
                },
                {
                    "GetObsBluePrintPos",  -- 获取方块蓝图位置 🟡[权限不足]
                    0,
                    {
                        [3] = "LuaApi3_InternalApi",  -- 内部API
                    },
                },
            },
        },
        Listen = {  -- 监听模块
            ix = 9,  -- 模块序号
            methods = {
                {
                    "VarRunDataRecord",  -- 变量运行数据记录 🔴[需要特殊脚本文件]
                    4,
                },
                {
                    "SetBlockAll",  -- 设置全部方块 🔴[需要特殊脚本文件]
                    0,
                    {
                        [3] = "LuaApi3_InternalApi",  -- 内部API
                    },
                },
            },
        },
        Timer = {  -- 计时器模块
            ix = 10,  -- 模块序号
            dismethods = {},
        },
        CustomUI = {  -- 界面模块
            ix = 11,  -- 模块序号
            methods = {
                {
                    "SetText",  -- 设置文本 ✅(文档包含)
                    7,
                    {
                        [5] = {
                            3,
                            5,
                        },
                    },
                },
                {
                    "SetTexture",  -- 设置贴图 ✅(文档包含)
                    4,
                    {
                        [5] = {
                            3,
                        },
                    },
                },
                {
                    "SetSize",  -- 设置尺寸 ✅(文档包含)
                    4,
                    {
                        [5] = {
                            3,
                        },
                        [6] = {
                            3,
                            "SetRelationSize",  -- 设置相对尺寸 ✅(文档包含)
                            "SetScale",  -- 设置缩放 ✅(文档包含)
                            "SmoothScaleBy",  -- 平滑缩放(相对) ✅(文档包含)
                            "SmoothScaleTo",  -- 平滑缩放到 ✅(文档包含)
                        },
                    },
                },
                {
                    "SetFontSize",  -- 设置字体大小 ✅(文档包含)
                    4,
                    {
                        [5] = {
                            3,
                        },
                    },
                },
                {
                    "SetColor",  -- 设置颜色 ✅(文档包含)
                    4,
                    {
                        [5] = {
                            3,
                        },
                    },
                },
                {
                    "ShowElement",  -- 显示元素 ✅(文档包含)
                    4,
                },
                {
                    "HideElement",  -- 隐藏元素 ✅(文档包含)
                    4,
                },
                {
                    "RotateElement",  -- 旋转元素 ✅(文档包含)
                    4,
                    {
                        [5] = {
                            3,
                        },
                    },
                },
                {
                    "SetAlpha",  -- 设置透明度 ✅(文档包含)
                    4,
                    {
                        [5] = {
                            3,
                        },
                    },
                },
                {
                    "SetState",  -- 设置状态 ✅(文档包含)
                    4,
                    {
                        [6] = {
                            3,
                        },
                    },
                },
                {
                    "SetPosition",  -- 设置位置 ✅(文档包含)
                    4,
                    {
                        [5] = {
                            3,
                        },
                        [6] = {
                            3,
                            "SetRelationPosition",  -- 设置相对位置 ✅(文档包含)
                            "SmoothMoveTo",  -- 平滑移动到 ✅(文档包含)
                            "SmoothMoveBy",  -- 平滑移动(相对) ✅(文档包含)
                        },
                    },
                },
                {
                    "SmoothMoveTo",  -- 平滑移动到 ✅(文档包含)
                    4,
                    {
                        [6] = {
                            3,
                            "SetPosition",  -- 设置位置 ✅(文档包含)
                            "SetRelationPosition",  -- 设置相对位置 ✅(文档包含)
                            "SmoothMoveBy",  -- 平滑移动(相对) ✅(文档包含)
                        },
                    },
                },
                {
                    "SmoothMoveBy",  -- 平滑移动(相对) ✅(文档包含)
                    4,
                    {
                        [6] = {
                            3,
                            "SetPosition",  -- 设置位置 ✅(文档包含)
                            "SetRelationPosition",  -- 设置相对位置 ✅(文档包含)
                            "SmoothMoveTo",  -- 平滑移动到 ✅(文档包含)
                        },
                    },
                },
                {
                    "SmoothScaleTo",  -- 平滑缩放到 ✅(文档包含)
                    4,
                    {
                        [6] = {
                            3,
                            "SetSize",  -- 设置尺寸 ✅(文档包含)
                            "SetRelationSize",  -- 设置相对尺寸 ✅(文档包含)
                            "SetScale",  -- 设置缩放 ✅(文档包含)
                            "SmoothScaleBy",  -- 平滑缩放(相对) ✅(文档包含)
                        },
                    },
                },
                {
                    "SmoothScaleBy",  -- 平滑缩放(相对) ✅(文档包含)
                    4,
                    {
                        [6] = {
                            3,
                            "SetSize",  -- 设置尺寸 ✅(文档包含)
                            "SetRelationSize",  -- 设置相对尺寸 ✅(文档包含)
                            "SetScale",  -- 设置缩放 ✅(文档包含)
                            "SmoothScaleTo",  -- 平滑缩放到 ✅(文档包含)
                        },
                    },
                },
                {
                    "SmoothRotateTo",  -- 平滑旋转到 ✅(文档包含)
                    4,
                    {
                        [6] = {
                            3,
                            "RotateElement",  -- 旋转元素 ✅(文档包含)
                            "SmoothRotateBy",  -- 平滑旋转(相对) ✅(文档包含)
                        },
                    },
                },
                {
                    "SmoothRotateBy",  -- 平滑旋转(相对) ✅(文档包含)
                    4,
                    {
                        [6] = {
                            3,
                            "RotateElement",  -- 旋转元素 ✅(文档包含)
                            "SmoothRotateTo",  -- 平滑旋转到 ✅(文档包含)
                        },
                    },
                },
                {
                    "PlayElementAnim",  -- 播放元素动画 ✅(文档包含)
                    4,
                },
                {
                    "StopAnim",  -- 停止动画 ✅(文档包含)
                    4,
                },
                {
                    "SetLoaderModel",  -- 设置加载模型 ✅(文档包含)
                    7,
                },
                {
                    "SetLoaderModelScale",  -- 设置加载模型缩放 ✅(文档包含)
                    4,
                    {
                        [5] = {
                            3,
                        },
                    },
                },
                {
                    "SetLoaderModelDir",  -- 设置加载模型朝向 ✅(文档包含)
                    4,
                },
                {
                    "SetLoaderModelAct",  -- 设置加载模型动作 ✅(文档包含)
                    4,
                },
                {
                    "TurnSliderToPos",  -- 滑动条转到指定位置 ✅(文档包含)
                    4,
                },
                {
                    "SetSliderDir",  -- 设置滑动条方向 ✅(文档包含)
                    4,
                    {
                        [5] = {
                            3,
                        },
                    },
                },
                {
                    "SetSliderBarImg",  -- 设置滑动条图片 ✅(文档包含)
                    4,
                    {
                        [5] = {
                            3,
                        },
                    },
                },
                {
                    "SetRelationPosition",  -- 设置相对位置 ✅(文档包含)
                    4,
                    {
                        [5] = {
                            3,
                        },
                        [6] = {
                            3,
                            "SetPosition",  -- 设置位置 ✅(文档包含)
                            "SmoothMoveBy",  -- 平滑移动(相对) ✅(文档包含)
                            "SmoothMoveTo",  -- 平滑移动到 ✅(文档包含)
                        },
                    },
                },
                {
                    "SetRelationSize",  -- 设置相对尺寸 ✅(文档包含)
                    4,
                    {
                        [5] = {
                            3,
                        },
                        [6] = {
                            3,
                            "SetSize",  -- 设置尺寸 ✅(文档包含)
                            "SetScale",  -- 设置缩放 ✅(文档包含)
                            "SmoothScaleBy",  -- 平滑缩放(相对) ✅(文档包含)
                            "SmoothScaleTo",  -- 平滑缩放到 ✅(文档包含)
                        },
                    },
                },
                {
                    "CreateElement",  -- 创建元素 ✅(文档包含)
                    7,
                },
                {
                    "CloneElement",  -- 克隆元素 ✅(文档包含)
                    7,
                },
                {
                    "ChangeParent",  -- 更换父级 ✅(文档包含)
                    4,
                },
                {
                    "SetProgressBarValue",  -- 设置进度条数值 ✅(文档包含)
                    4,
                    {
                        [5] = {
                            3,
                        },
                        [6] = {
                            3,
                            "SetProgressBarData",  -- 设置进度条数据 🔴[需要特殊脚本文件]
                            "SmoothIncreaseProgress",  -- 平滑增加进度 ✅(文档包含)
                        },
                    },
                },
                {
                    "SetProgressBarData",  -- 设置进度条数据 🔴[需要特殊脚本文件]
                    4,
                    {
                        [5] = {
                            3,
                        },
                        [6] = {
                            3,
                            "SetProgressBarValue",  -- 设置进度条数值 ✅(文档包含)
                            "SmoothIncreaseProgress",  -- 平滑增加进度 ✅(文档包含)
                        },
                    },
                },
                {
                    "SetProgressBarResId",  -- 设置进度条资源ID ✅(文档包含)
                    4,
                },
                {
                    "SmoothChangeProgress",  -- 平滑改变进度 ✅(文档包含)
                    4,
                },
                {
                    "SetSpineAnimID",  -- 设置骨骼动画ID ✅(文档包含)
                    4,
                },
                {
                    "SmoothIncreaseProgress",  -- 平滑增加进度 ✅(文档包含)
                    4,
                    {
                        [5] = {
                            3,
                        },
                        [6] = {
                            3,
                            "SetProgressBarValue",  -- 设置进度条数值 ✅(文档包含)
                            "SmoothIncreaseProgress",  -- 平滑增加进度 ✅(文档包含)
                        },
                    },
                },
                {
                    "SetFloatDamageTxt",  -- 设置飘字伤害文本 ✅(文档包含)
                    4,
                },
                {
                    "SetFloatDamageTxtEx",  -- 设置飘字伤害文本(扩展) 🔴[需要特殊脚本文件]
                    4,
                },
                {
                    "SyncPicCheckStatus",  -- 同步图片勾选状态 🔴[需要特殊脚本文件]
                    4,
                },
                {
                    "TurnSliderToIndex",  -- 滑动条转到指定索引 🔴[需要特殊脚本文件]
                    4,
                },
                {
                    "GetScreenSize",  -- 获取屏幕尺寸 ✅(文档包含)
                    5,
                },
                {
                    "GlobalToLocal",  -- 全局坐标转局部坐标 🔴[需要特殊脚本文件]
                    5,
                },
                {
                    "SetLoaderModelPosition",  -- 设置加载模型位置 ✅(文档包含)
                    4,
                },
                {
                    "SmoothScaleByEx",  -- 平滑缩放(扩展) ✅(文档包含)
                    4,
                },
                {
                    "SetScale",  -- 设置缩放 ✅(文档包含)
                    4,
                },
                {
                    "SetBounceback",  -- 设置回弹 🔴[需要特殊脚本文件]
                    4,
                },
                {
                    "SetSpineTouch",  -- 设置骨骼触摸 🔴[需要特殊脚本文件]
                    4,
                },
                {
                    "EnableSetGunMagazine",  -- 启用设置枪械弹匣 🔴[需要特殊脚本文件]
                    4,
                },
                {
                    "GetProgressBarValue",  -- 获取进度条数值 ✅(文档包含)
                    5,
                },
                {
                    "DeleteElement",  -- 删除元素 ✅(文档包含)
                    4,
                },
                {
                    "SetPositionBindActor",  -- 设置位置绑定角色 🟢
                    4,
                },
                {
                    "RemovePositionBindActor",  -- 移除位置绑定角色 🟢
                    4,
                },
                {
                    "SetPositionBandBlock",  -- 设置位置绑定方块 🟢
                    4,
                },
                {
                    "RemovePositionBandBlock",  -- 移除位置绑定方块 🟢
                    4,
                },
                {
                    "SetSysSettingBtnVisible",  -- 设置系统设置按钮可见性 🟡[权限不足]
                    4,
                    {
                        [3] = "LuaApi3_CustomUI_SetSysSettingBtnVisible",  -- 界面模块-设置系统设置按钮可见性
                    },
                },
                {
                    "GetElementAttrValue",  -- 获取元素属性值 🟡[权限不足]
                    5,
                    {
                        [3] = "LuaApi3_CustomUI_GetElementAttrValue",  -- 界面模块-获取元素属性值
                    },
                },
                {
                    "GetUIViewAttrValue",  -- 获取界面视图属性值 🟡[权限不足]
                    5,
                    {
                        [3] = "LuaApi3_CustomUI_GetUIViewAttrValue",  -- 界面模块-获取界面视图属性值
                    },
                },
                {
                    "SetBeaconBandPos",  -- 设置信标绑定位置 ✅(文档包含)
                    4,
                },
                {
                    "SetBeaconObjId",  -- 设置信标对象ID ✅(文档包含)
                    4,
                },
                {
                    "SetBeaconOffset",  -- 设置信标偏移 ✅(文档包含)
                    4,
                },
                {
                    "SetBeaconClampType",  -- 设置信标约束类型 ✅(文档包含)
                    4,
                },
                {
                    "SetBeaconRadius",  -- 设置信标半径 ✅(文档包含)
                    4,
                },
                {
                    "SetUrlIcon",  -- 设置URL图标 🟡[权限不足]
                    4,
                    {
                        [3] = "LuaApi3_InternalApi",  -- 内部API
                    },
                },
                {
                    "SetBeaconMargin",  -- 设置信标边距 ✅(文档包含)
                    4,
                },
            },
            dismethods = {
                "CreateElementId",  -- 创建元素ID ☠️[ban]
                "CloneElementId",  -- 克隆元素ID ☠️[ban]
            },
        },
        Chat = {  -- 聊天模块
            ix = 12,  -- 模块序号
            dismethods = {
                "SendMsg",  -- 发送消息 ☠️[ban]
            },
        },
        Player = {  -- 玩家模块
            ix = 13,  -- 模块序号
            dismethods = {
                "GetActorByObjid",  -- 通过迷你号获取角色 ☠️[ban]
                "GetObjTypeByActor",  -- 通过角色获取对象类型 ☠️[ban]
                "ChangeCustomModelOld",  -- 更换自定义模型(旧版) ☠️[ban]
            },
            methods = {
                {
                    "OpenInnerItemTips",  -- 打开道具提示界面 🔴[需要特殊脚本文件]
                    3,
                },
                {
                    "SetCustomRevieInfo",  -- 设置自定义评价信息 🔴[需要特殊脚本文件]
                    3,
                },
                {
                    "OpenEquipFrame",  -- 打开装备界面 🔴[需要特殊脚本文件]
                    3,
                },
                {
                    "GetClientInfo",  -- 获取客户端信息 ✅(文档包含)
                    5,
                },
                {
                    "GetMiniCurrency",  -- 获取迷你币 ✅(文档包含)
                    5,
                },
                {
                    "RequestExchangeCoins",  -- 请求兑换金币 🔴[需要特殊脚本文件]
                    3,
                },
                {
                    "RequestCostCoin",  -- 请求消耗金币 🔴[需要特殊脚本文件]
                    5,
                    {
                        [2] = {
                            3,
                            "",
                        },
                    },
                },
                {
                    "CheckCustomOrderID",  -- 检查自定义订单ID 🔴[需要特殊脚本文件]
                    1,
                },
                {
                    "GetPlayerCostStatic",  -- 获取玩家消费统计 ✅(文档包含)
                    1,
                    {
                        [2] = {
                            5,
                            "",
                        },
                    },
                },
                {
                    "GetBuyItemRecoder",  -- 获取购买道具记录 🔴[需要特殊脚本文件]
                    1,
                },
                {
                    "OpenRewardsFrame",  -- 打开奖励界面 🔴[需要特殊脚本文件]
                    3,
                },
                {
                    "OpenShopMiniCoinView",  -- 打开迷你币商店界面 🔴[需要特殊脚本文件]
                    3,
                },
                {
                    "SetDeathFrameVisible",  -- 设置死亡界面可见 🔴[需要特殊脚本文件]
                    3,
                },
                {
                    "OpenActView",  -- 打开活动界面 🟡[权限不足]
                    3,
                    {
                        [3] = "trigger_api_MiraclesEventsPage",  -- 触发器API-活动页面
                    },
                },
                {
                    "OpenDevGoodsBuyDialog",  -- 打开开发者道具购买弹窗 ✅(文档包含)
                    7,
                },
                {
                    "OpenDevGoodsPage",  -- 打开开发者道具页面 ✅(文档包含)
                    4,
                },
                {
                    "OpenGunUpgradeFrame",  -- 打开枪械升级界面 🔴[需要特殊脚本文件]
                    3,
                },
                {
                    "CloseGunUpgradeFrame",  -- 关闭枪械升级界面 🔴[需要特殊脚本文件]
                    3,
                },
                {
                    "OpenShopTryOnView",  -- 打开商店试穿界面 🟡[权限不足]
                    3,
                    {
                        [3] = "trigger_api_SkinTrialShop",  -- 触发器API-皮肤试穿商店
                    },
                },
                {
                    "OpenShopSkinBuyDialog",  -- 打开商店皮肤购买弹窗 🟡[权限不足]
                    3,
                    {
                        [3] = "trigger_api_SkinTrialShop",  -- 触发器API-皮肤试穿商店
                    },
                },
                {
                    "CloseRoleAttrFrame",  -- 关闭角色属性界面 🔴[需要特殊脚本文件]
                    3,
                },
                {
                    "RefreshItemTips",  -- 刷新道具提示 🔴[需要特殊脚本文件]
                    3,
                },
                {
                    "SetTriggerOperateDisable",  -- 设置触发器操作禁用 🔴[需要特殊脚本文件]
                    7,
                },
                {
                    "SetCameraLerpSpeed",  -- 设置相机插值速度 🔴[需要特殊脚本文件]
                    3,
                },
                {
                    "PlayHandAnim",  -- 播放手部动画 ✅(文档包含同名:Actor)
                    3,
                },
                {
                    "PlayHandToolAnim",  -- 播放手持工具动画 🔴[需要特殊脚本文件]
                    3,
                },
                {
                    "ShowFishLine",  -- 显示鱼线 🔴[需要特殊脚本文件]
                    3,
                },
                {
                    "EnableUpdateRun",  -- 启用更新运行 🔴[需要特殊脚本文件]
                    3,
                },
                {
                    "ChangeViewModeForMod",  -- 为模组切换视角模式 🟡[权限不足]
                    3,
                    {
                        [3] = "LuaApi3_InternalApi",  -- 内部API
                    },
                },
                {
                    "SetFishLineEndPoint",  -- 设置鱼线终点 🔴[需要特殊脚本文件]
                    3,
                },
                {
                    "ClearMotion",  -- 清除动作 ✅(文档包含)
                    3,
                },
                {
                    "StopHandAnim",  -- 停止手部动画 🔴[需要特殊脚本文件]
                    3,
                },
                {
                    "StopHandToolAnim",  -- 停止手持工具动画 🔴[需要特殊脚本文件]
                    3,
                },
                {
                    "SetHandOrToolAnimSpeed",  -- 设置手或工具动画速度 🔴[需要特殊脚本文件]
                    3,
                },
                {
                    "SetTaskTraceVisible",  -- 设置任务追踪可见 🔴[需要特殊脚本文件]
                    3,
                },
                {
                    "GetScreenSpacePos",  -- 获取屏幕空间坐标 ✅(文档包含)
                    5,
                },
                {
                    "GetScreenSpacePosV2",  -- 获取屏幕空间坐标V2 ✅(文档包含)
                    5,
                },
                {
                    "RotateCamera",  -- 旋转相机 ✅(文档包含)
                    3,
                },
                {
                    "ChangeSkinTextureForMod",  -- 为模组更换皮肤贴图 🔴[需要特殊脚本文件]
                    8,
                },
                {
                    "OpenShopGiveGiftView",  -- 打开商店送礼界面 🟡[权限不足]
                    3,
                    {
                        [3] = "trigger_api_SendGiftsToFriends",  -- 触发器API-送礼给好友
                    },
                },
                {
                    "SetPolaroidViewVisible",  -- 设置拍立得视图可见 🔴[需要特殊脚本文件]
                    4,
                },
                {
                    "GetFirstInviter",  -- 获取首个邀请人 ✅(文档包含)
                    1,
                },
                {
                    "HasFriend",  -- 是否有好友 ✅(文档包含)
                    5,
                },
                {
                    "GetMiniVipLevel",  -- 获取迷你VIP等级 ✅(文档包含)
                    5,
                },
                {
                    "SetNoClip",  -- 设置穿墙模式 🔴[需要特殊脚本文件]
                    7,
                },
                {
                    "OpenTaskMainUI",  -- 打开任务主界面 🔴[需要特殊脚本文件]
                    3,
                },
                {
                    "OpenTaskTraceUI",  -- 打开任务追踪界面 🔴[需要特殊脚本文件]
                    3,
                },
                {
                    "SendFriendApply",  -- 发送好友申请 ✅(文档包含)
                    3,
                    {
                        [2] = {
                            10,
                            "",
                        },
                    },
                },
                {
                    "SetShotcutIndex",  -- 设置快捷栏索引 ✅(文档包含)
                    3,
                },
                {
                    "SetCanThrow",  -- 设置能否投掷 🔴[需要特殊脚本文件]
                    7,
                },
                {
                    "SetCrawl",  -- 设置匍匐 🟡[权限不足]
                    7,
                    {
                        [3] = "LuaApi3_InternalApi",  -- 内部API
                    },
                },
                {
                    "HasHandheldGun",  -- 是否手持枪械 🟡[权限不足]
                    0,
                    {
                        [3] = "LuaApi3_InternalApi",  -- 内部API
                    },
                },
                {
                    "GunGetMagazine",  -- 获取枪械弹匣 🟡[权限不足]
                    0,
                    {
                        [3] = "LuaApi3_InternalApi",  -- 内部API
                    },
                },
                {
                    "GetViewMode",  -- 获取视角模式 ✅(文档包含)
                    5,
                },
                {
                    "OpenInnerView",  -- 打开内部界面 ✅(文档包含)
                    7,
                },
                {
                    "OpenDevGoodsBuyDetailedDialog",  -- 打开开发者道具购买详情弹窗 ✅(文档包含)
                    7,
                },
                {
                    "OpenDevStore",  -- 打开开发者商店 ✅(文档包含)
                    4,
                },
                {
                    "OpenDevStoreTab",  -- 打开开发者商店标签页 ✅(文档包含)
                    4,
                },
                {
                    "PlayAdvertising",  -- 播放广告 ✅(文档包含)
                    0,
                    {
                        [2] = {
                            90,
                            "调用频繁，请稍后尝试！",
                        },
                    },
                },
                {
                    "PlayAdvertising_OnClient",  -- 播放广告(客户端) 🔴[需要特殊脚本文件]
                    5,
                },
                {
                    "GetMallModel",  -- 获取商城模型 🔴[需要特殊脚本文件]
                    5,
                },
                {
                    "AddMagazine",  -- 添加弹匣 🟡[权限不足]
                    0,
                    {
                        [3] = "LuaApi3_InternalApi",  -- 内部API
                    },
                },
                {
                    "GetVisibleRange",  -- 获取可见范围 🟡[权限不足]
                    5,
                    {
                        [3] = "LuaApi3_InternalApi",  -- 内部API
                    },
                },
                {
                    "SetVisibleRange",  -- 设置可见范围 🟡[权限不足]
                    3,
                    {
                        [3] = "LuaApi3_InternalApi",  -- 内部API
                    },
                },
                {
                    "SetCameraShake",  -- 设置相机震动 🟡[权限不足]
                    4,
                    {
                        [3] = "LuaApi3_Player_SetCameraShake",  -- 玩家模块-设置相机震动
                    },
                },
                {
                    "SyncTriggerData",  -- 同步触发器数据 🔴[需要特殊脚本文件]
                    7,
                },
                {
                    "GetSkinlist",  -- 获取皮肤列表 🟡[权限不足]
                    1,
                    {
                        [3] = "LuaApi3_Player_GetSkinlist",  -- 玩家模块-获取皮肤列表
                    },
                },
                {
                    "SetSkillCD",  -- 设置技能冷却 ✅(文档包含)
                    7,
                },
                {
                    "PayMapShopOrder",  -- 支付地图商店订单 🔴[需要特殊脚本文件]
                    7,
                },
                {
                    "FinishMapShopOrder",  -- 完成地图商店订单 🔴[需要特殊脚本文件]
                    7,
                },
                {
                    "CheckMapShopOrder",  -- 检查地图商店订单 🔴[需要特殊脚本文件]
                    1,
                },
                {
                    "GetMapShopAllNoFinishOrder",  -- 获取地图商店所有未完成订单 🔴[需要特殊脚本文件]
                    1,
                },
                {
                    "GetSkinSeatInfos",  -- 获取皮肤座位信息 🟡[权限不足]
                    5,
                    {
                        [3] = "LuaApi3_Player_GetSkinSeatInfos",  -- 玩家模块-获取皮肤座位信息
                    },
                },
                {
                    "GetFriendList",  -- 获取好友列表 ✅(文档包含)
                    5,
                    {
                        [2] = {
                            10,
                            "调用频繁，请稍后尝试！",
                        },
                    },
                },
                {
                    "OpenFriendChatPage",  -- 打开好友聊天页面 🟡[权限不足]
                    3,
                    {
                        [3] = "trigger_api_SendGiftsToFriends",  -- 触发器API-送礼给好友
                    },
                },
                {
                    "SetSettingEnable",  -- 设置设置项启用 ✅(文档包含)
                    4,
                },
                {
                    "SetSettingAbility",  -- 设置设置项能力 ✅(文档包含)
                    4,
                },
                {
                    "OpenMiniShopPage",  -- 打开迷你商店页面 🟡[权限不足]
                    4,
                    {
                        [3] = "LuaApi3_Player_OpenMiniShopPage",  -- 玩家模块-打开迷你商店页面
                    },
                },
                {
                    "OpenMiniShopItemPage",  -- 打开迷你商店道具页面 🟡[权限不足]
                    4,
                    {
                        [3] = "LuaApi3_Player_OpenMiniShopItemPage",  -- 玩家模块-打开迷你商店道具页面
                    },
                },
                {
                    "OpenMiniShopWarehousePage",  -- 打开迷你商店仓库页面 🟡[权限不足]
                    4,
                    {
                        [3] = "LuaApi3_Player_OpenMiniShopWarehousePage",  -- 玩家模块-打开迷你商店仓库页面
                    },
                },
                {
                    "GetHorseRealID",  -- 获取坐骑真实ID 🟡[权限不足]
                    5,
                    {
                        [3] = "LuaApi3_Player_GetHorseRealID",  -- 玩家模块-获取坐骑真实ID
                    },
                },
                {
                    "GetPersonInfo",  -- 获取个人信息 🟡[权限不足]
                    5,
                    {
                        [3] = "LuaApi3_Player_GetPersonInfo",  -- 玩家模块-获取个人信息
                        [2] = {
                            5,
                            "调用频繁，请稍后尝试！",
                        },
                    },
                },
                {
                    "RotateMainModel",  -- 旋转主模型 ✅(文档包含)
                    4,
                },
                {
                    "GetBlockAtlasInfo",  -- 获取方块图集信息 🟡[权限不足]
                    5,
                    {
                        [3] = "LuaApi3_Player_GetBlockAtlasInfo",  -- 玩家模块-获取方块图集信息
                    },
                },
            },
        },
        World = {  -- 世界模块
            ix = 14,  -- 模块序号
            methods = {
                {
                    "AddCustomMarker",  -- 添加自定义标记 🔴[需要特殊脚本文件]
                    3,
                },
                {
                    "DelCustomMarker",  -- 删除自定义标记 🔴[需要特殊脚本文件]
                    3,
                },
                {
                    "CloseStorageBoxFrame",  -- 关闭储物箱界面 🔴[需要特殊脚本文件]
                    3,
                },
                {
                    "ClearCustomMarkerByResName",  -- 按资源名清除自定义标记 🔴[需要特殊脚本文件]
                    3,
                },
                {
                    "SnapShortAndOpenShareFrame",  -- 截屏并打开分享界面 🔴[需要特殊脚本文件]
                    3,
                },
                {
                    "SetPicAndShare",  -- 设置图片并分享 🔴[需要特殊脚本文件]
                    3,
                },
                {
                    "SetSkyBoxFilterForMod",  -- 为模组设置天空盒滤镜 🔴[需要特殊脚本文件]
                    3,
                },
                {
                    "SetHours",  -- 设置小时 ✅(文档包含)
                    8,
                },
                {
                    "SetGravity",  -- 设置重力 ✅(文档包含)
                    8,
                },
                {
                    "PixelMapAddMarker",  -- 像素地图添加标记 ✅(文档包含)
                    3,
                },
                {
                    "PixelMapRefreshMarker",  -- 像素地图刷新标记 ✅(文档包含)
                    3,
                },
                {
                    "PixelMapDelMarker",  -- 像素地图删除标记 ✅(文档包含)
                    3,
                },
                {
                    "PixelMapAddTexture",  -- 像素地图添加贴图 ✅(文档包含)
                    3,
                },
                {
                    "PixelMapRefreshTexture",  -- 像素地图刷新贴图 ✅(文档包含)
                    3,
                },
                {
                    "PixelMapDelTexture",  -- 像素地图删除贴图 ✅(文档包含)
                    3,
                },
                {
                    "SetIsCreateSnow",  -- 设置是否生成雪 🔴[需要特殊脚本文件]
                    8,
                    {
                        [7] = 1,
                    },
                },
                {
                    "SetInnerViewEnable",  -- 设置内部界面启用 ✅(文档包含)
                    8,
                    {
                        [7] = 1,
                    },
                },
                {
                    "FindNearActorListByObjType",  -- 按对象类型查找附近角色列表 🟡[权限不足]
                    0,
                    {
                        [3] = "LuaApi3_InternalApi",  -- 内部API
                    },
                },
                {
                    "SetLightByPos",  -- 按坐标设置光照 ✅(文档包含)
                    8,
                },
                {
                    "AddGameTimes",  -- 增加游戏次数 🟡[权限不足]
                    0,
                    {
                        [3] = "LuaApi3_World_AddGameTimes",  -- 世界模块-增加游戏次数
                    },
                },
                {
                    "SetMapIconSettingCfg",  -- 设置地图图标设置配置 🔴[需要特殊脚本文件]
                    8,
                    {
                        [7] = 1,
                    },
                },
                {
                    "SetChunkRectAlwaysLoaded",  -- 设置区块矩形常驻加载 🟡[权限不足]
                    8,
                    {
                        [7] = 1,
                        [3] = "LuaApi3_World_SetChunkRectAlwaysLoaded",  -- 世界模块-设置区块矩形常驻加载
                    },
                },
                {
                    "SetSkyBoxColorAnim",  -- 设置天空盒颜色动画 ✅(文档包含)
                    3,
                },
                {
                    "SetTimeVanishingSpeed",  -- 设置时间流逝速度 ✅(文档包含)
                    8,
                },
                {
                    "SetSkyBoxTemplate",  -- 设置天空盒模板 ✅(文档包含)
                    8,
                },
                {
                    "SetSkyBoxMaps",  -- 设置天空盒贴图 ✅(文档包含)
                    8,
                },
                {
                    "SetSkyBoxColor",  -- 设置天空盒颜色 ✅(文档包含)
                    8,
                },
                {
                    "SetSkyBoxAttr",  -- 设置天空盒属性 ✅(文档包含)
                    8,
                },
                {
                    "SetSkyBoxAttrWithNoTime",  -- 设置天空盒属性(无时间) ✅(文档包含)
                    8,
                },
                {
                    "SetSkyBoxFilter",  -- 设置天空盒滤镜 ✅(文档包含)
                    3,
                },
                {
                    "SetSkyBoxFilterSwitch",  -- 设置天空盒滤镜开关 🔴[需要特殊脚本文件]
                    3,
                },
                {
                    "SetSkyBoxSwitch",  -- 设置天空盒开关 ✅(文档包含)
                    8,
                },
                {
                    "SetSkyBoxMapsAnim",  -- 设置天空盒贴图动画 ✅(文档包含)
                    3,
                },
                {
                    "SetSkyBoxFilterAnim",  -- 设置天空盒滤镜动画 ✅(文档包含)
                    3,
                },
            },
            dismethods = {
                "GetWorldById",  -- 通过ID获取世界 ☠️[ban]
                "GetWorldId",  -- 获取世界ID ☠️[ban]
            },
        },
        ClientPositive = {  -- 客户端主动上报模块
            ix = 15,  -- 模块序号
            methods = {
                {
                    "OnDispathTriggerEvent",  -- 分发触发器事件回调 🔴[需要特殊脚本文件]
                    6,
                },
                {
                    "OnReportHostTriggerEvent",  -- 上报主机触发器事件回调 🔴[需要特殊脚本文件]
                    6,
                },
                {
                    "OnCheckServerTime",  -- 检查服务器时间回调 🔴[需要特殊脚本文件]
                    6,
                },
                {
                    "OnSyncServerTime",  -- 同步服务器时间回调 🔴[需要特殊脚本文件]
                    3,
                },
                {
                    "DealAutoTestCmd",  -- 处理自动化测试命令 🔴[需要特殊脚本文件]
                    5,
                },
                {
                    "ExportReportV2",  -- 导出报告V2 🔴[需要特殊脚本文件]
                    3,
                },
                {
                    "OnSyncInscriptionTableUnlockSpellList",  -- 同步铭文表解锁技能列表回调 🔴[需要特殊脚本文件]
                    3,
                },
            },
        },
        OfficeUtils = {  -- 工具模块
            ix = 16,  -- 模块序号
            methods = {
                {
                    "GeneralTaskReported",  -- 通用任务上报 🔴[需要特殊脚本文件]
                    3,
                },
                {
                    "ReportActivateDataForUin",  -- 上报玩家激活数据 🟡[权限不足]
                    0,
                    {
                        [3] = "trigger_api_UploadActData",  -- 触发器API-上传活动数据
                    },
                },
                {
                    "GetActivateProgress",  -- 获取激活进度 🟡[权限不足]
                    5,
                    {
                        [3] = "LuaApi3_InternalApi",  -- 内部API
                    },
                },
                {
                    "GetActivateReward",  -- 获取激活奖励 🟡[权限不足]
                    5,
                    {
                        [3] = "LuaApi3_InternalApi",  -- 内部API
                        [2] = {
                            10,
                            "请求频繁,请稍后再试！",
                        },
                    },
                },
                {
                    "SendClientReportEvent",  -- 发送客户端上报事件 🟡[权限不足]
                    4,
                    {
                        [3] = "LuaApi3_InternalApi",  -- 内部API
                    },
                },
                {
                    "ReportOfficeActivateData",  -- 上报活动数据 🟡[权限不足]
                    0,
                    {
                        [3] = "trigger_api_ReportOfficeActivateData",  -- 触发器API-上报活动数据
                    },
                },
            },
        },
        CloudSever = {  -- 云服务器模块
            ix = 17,  -- 模块序号
            methods = {
                {
                    "SendSeverMsg",  -- 发送服务器消息 🔴[需要特殊脚本文件]
                    0,
                    {
                        [4] = 15,
                        [3] = "message_trigger",  -- 消息触发器
                    },
                },
                {
                    "TransmitToMap",  -- 传送到地图 🔴[需要特殊脚本文件]
                    0,
                    {
                        [4] = 30,
                    },
                },
                {
                    "TransmitToCategoryRoom",  -- 传送到分类房间 🟡[权限不足]
                    0,
                    {
                        [4] = 30,
                        [3] = "trigger_api3_MapTagTransfer",  -- 触发器API-地图标签传送
                    },
                },
                {
                    "TransmitToCurMapCategoryRoom",  -- 传送到当前地图分类房间 🟡[权限不足]
                    0,
                    {
                        [4] = 30,
                        [3] = "trigger_api3_MapTagTransfer",  -- 触发器API-地图标签传送
                    },
                },
                {
                    "GetRoomCategory",  -- 获取房间分类 🟡[权限不足]
                    0,
                    {
                        [3] = "trigger_api3_MapTagTransfer",  -- 触发器API-地图标签传送
                    },
                },
                {
                    "SetRoomCategory",  -- 设置房间分类 🟡[权限不足]
                    0,
                    {
                        [4] = 5,
                        [3] = "trigger_api3_MapTagTransfer",  -- 触发器API-地图标签传送
                    },
                },
            },
        },
        Graphics = {  -- 图文信息模块
            ix = 18,  -- 模块序号
            methods = {
                {
                    "GetInnerGraphicsOffset_OnClient",  -- 获取内部图文偏移(客户端) 🔴[需要特殊脚本文件]
                    5,
                },
                {
                    "RemoveGraphicsByGraphicsID",  -- 按图文ID移除图文 ✅(文档包含)
                    8,
                },
            },
        },
        Actor = {  -- 角色模块
            ix = 19,  -- 模块序号
            dismethods = {
                "GetActorByObjid",  -- 通过迷你号获取角色 ☠️[ban]
                "GetObjTypeByActor",  -- 通过角色获取对象类型 ☠️[ban]
                "ChangeCustomModelOld",  -- 更换自定义模型(旧版) ☠️[ban]
                "CheckSyncAction",  -- 检查同步动作 ☠️[ban]
            },
            methods = {
                {
                    "SetActorControl",  -- 设置角色控制 🔴[需要特殊脚本文件]
                    8,
                },
                {
                    "SetOverlayGravity",  -- 设置叠加重力 🔴[需要特殊脚本文件]
                    8,
                },
                {
                    "WhitList_StopSkill",  -- 白名单停止技能 🟡[权限不足]
                    0,
                    {
                        [3] = "LuaApi3_InternalApi",  -- 内部API
                    },
                },
                {
                    "ShowNickName",  -- 显示昵称 ✅(文档包含)
                    8,
                },
                {
                    "PlayAnimByObj",  -- 按对象播放动画 ✅(文档包含)
                    8,
                },
                {
                    "RecoverinitialModel",  -- 恢复初始模型 ✅(文档包含)
                    7,
                },
            },
        },
        Monster = {  -- 生物模块
            ix = 20,  -- 模块序号
            methods = {
                {
                    "SetPersistance",  -- 设置持久化 🟡[权限不足]
                    0,
                    {
                        [3] = "LuaApi3_InternalApi",  -- 内部API
                    },
                },
            },
            dismethods = {
                "GetActorByObjid",  -- 通过迷你号获取角色 ☠️[ban]
                "GetObjTypeByActor",  -- 通过角色获取对象类型 ☠️[ban]
                "ChangeCustomModelOld",  -- 更换自定义模型(旧版) ☠️[ban]
            },
        },
        Status = {  -- 状态模块
            ix = 21,  -- 模块序号
        },
        Team = {  -- 队伍模块
            ix = 22,  -- 模块序号
        },
        WorldContainer = {  -- 容器模块
            ix = 23,  -- 模块序号
        },
        Backpack = {  -- 背包模块
            ix = 24,  -- 模块序号
            methods = {
                {
                    "GetGridGunInfo",  -- 获取格子枪械信息 🟡[权限不足]
                    0,
                    {
                        [3] = "LuaApi3_InternalApi",  -- 内部API
                    },
                },
            },
        },
        GameRule = {  -- 游戏规则模块
            ix = 25,  -- 模块序号
        },
        GameEffect = {  -- 游戏特效模块
            ix = 26,  -- 模块序号
        },
        Mod = {  -- 资源模块
            ix = 27,  -- 模块序号
        },
        Task = {  -- 任务模块
            ix = 28,  -- 模块序号
        },
        ObjectLib = {  -- 对象库模块
            ix = 29,  -- 模块序号
        },
        Biome = {  -- 生物群系模块
            ix = 30,  -- 模块序号
        },
        Game = {  -- 游戏模块
            ix = 31,  -- 模块序号
            methods = {},
        },
        Buff = {  -- 状态效果模块
            ix = 32,  -- 模块序号
        },
        Trigger = {  -- 触发器模块
            ix = 33,  -- 模块序号
            items = {
                ArrayTmp = {},  -- 临时数组模块
                Math = {},  -- 数学模块
                Component = {  -- 组件模块
                    dismethods = {},
                    methods = {},
                },
                CustomUI = {},  -- 界面模块
                World = {},  -- 世界模块
                Player = {},  -- 玩家模块
                Item = {},  -- 道具模块
                Block = {},  -- 方块模块
                Actor = {},  -- 角色模块
                Monster = {},  -- 生物模块
                Area = {},  -- 区域模块
                Status = {},  -- 状态模块
                Graphics = {},  -- 图文信息模块
                Backpack = {},  -- 背包模块
                GameObject = {},  -- 游戏对象模块
                Buff = {},  -- 状态效果模块
                KvMap = {},  -- 键值表模块
                Timeline = {},  -- 剧情动画模块
            },
            methods = {
                {
                    "TransmitToCategoryRoom",  -- 传送到分类房间 🟡[权限不足]
                    0,
                    {
                        [4] = 30,
                        [3] = "trigger_api3_MapTagTransfer",  -- 触发器API-地图标签传送
                    },
                },
            },
        },
        Timeline = {  -- 剧情动画模块
            ix = 34,  -- 模块序号
            methods = {},
            dismethods = {},
        },
        Planet = {  -- 星球模块
            ix = 35,  -- 模块序号
            dismethods = {
                "GetOrCreatePlanetWorld",  -- 获取或创建星球世界 ☠️[ban]
                "KeepChunkLoaded",  -- 保持区块加载 ☠️[ban]
                "PreloadChunk",  -- 预加载区块 ☠️[ban]
                "IsPlanetRuntimeSupported",  -- 星球运行时是否支持 ☠️[ban]
                "GetDefaultSafePos",  -- 获取默认安全位置 ☠️[ban]
                "FindRandomSafePos",  -- 查找随机安全位置 ☠️[ban]
                "RegisterKeptChunk",  -- 注册常驻区块 ☠️[ban]
                "ReleaseKeptChunk",  -- 释放常驻区块 ☠️[ban]
                "ReleaseAllKeptChunks",  -- 释放所有常驻区块 ☠️[ban]
            },
        },
    },
    ScriptFenvG = {  -- 脚本全局环境（Fenv）可用变量列表
        ITEMATTR = true,  -- 道具属性常量表
        math = true,  -- Lua数学库
        VIEWPORTTYPE = true,  -- 视口类型枚举
        xpcall = true,  -- 安全调用函数(带错误处理)
        pcall = true,  -- 安全调用函数
        error = true,  -- 抛出错误
        tostring = true,  -- 转字符串
        tonumber = true,  -- 转数字
        select = true,  -- 选择参数
        unpack = true,  -- 展开表
        rawequal = true,  -- 原始相等比较
        copy_table = true,  -- 复制表函数
        rawget = true,  -- 原始获取表值
        getServerTime = true,  -- 获取服务器时间
        MODATTRIB_TYPE = true,  -- 模组属性类型枚举
        setmetatable = true,  -- 设置元表
        GameActorType = true,  -- 游戏角色类型枚举
        BACKPACK_TYPE = true,  -- 背包类型枚举
        CREATUREATTR = true,  -- 生物属性常量表
        next = true,  -- 遍历表下一项
        type = true,  -- 获取类型
        PLAYERATTR = true,  -- 玩家属性常量表
        table = true,  -- Lua表库
        HURTTYPE = true,  -- 伤害类型枚举
        assert = true,  -- 断言
        coroutine = true,  -- Lua协程库
        _VERSION = true,  -- Lua版本号
        GRAPHICS = true,  -- 图文信息常量
        string = true,  -- Lua字符串库
        ABSOLUTECAMPTYPE = true,  -- 绝对相机类型枚举
        LinearTransformation = true,  -- 线性变换
    },
    devServices = {  -- 开发者服务模块列表（编辑器可调用）
        Log = {  -- 日志模块
            methods = {},
        },
        GameObject = {  -- 游戏对象模块
            name = "对象模块",  -- 名称
            methods = {
                "FindObject",  -- 查找对象 ✅(文档包含)
                "GetObjInstanceID",  -- 获取对象实例ID 🟢
                "FindUIObject",  -- 查找UI对象 ✅(文档包含)
                "FindBlockObject",  -- 查找方块对象 ✅(文档包含)
                "CreatePrefab",  -- 创建预制体 ✅(文档包含)
                "CreatePrefabInst",  -- 创建预制体实例 ✅(文档包含)
                "Destroy",  -- 销毁对象 ✅(文档包含)
                "GetObjectPrefab",  -- 获取对象预制体 ✅(文档包含)
                "FindPlanet",  -- 查找星球 🟢
            },
        },
        Data = {  -- 数据模块
            name = "普通变量数据",  -- 名称
            methods = {
                "SetValue",  -- 设置值 ✅(文档包含)
                "GetValue",  -- 获取值 ✅(文档包含)
                "DoPackBluePrint",  -- 打包蓝图数据 🟡[权限不足]
                "IncreasesValue",  -- 增加值 ✅(文档包含)
            },
            items = {
                Array = {  -- 数组模块
                    name = "数组变量数据",  -- 名称
                    methods = {
                        "Remove",  -- 移除 🟢
                        "InsertValue",  -- 插入值 🟢
                        "Sort",  -- 排序 🟢
                        "CreateTmpArray",  -- 创建临时数组 🟢
                        "HasValueByNo",  -- 是否包含指定序号的值 🟢
                        "GetMin",  -- 获取最小值 🟢
                        "Clear",  -- 清空 🟢
                        "GetMax",  -- 获取最大值 🟢
                        "ReplaceValue",  -- 替换值 🟢
                        "GetIndexByValue",  -- 按值获取索引 🟢
                        "RemoveByValues",  -- 按多个值移除 🟢
                        "InsertValues",  -- 批量插入值 🟢
                        "GetSize",  -- 获取大小 🟢
                        "RemoveByValue",  -- 按值移除 🟢
                        "GetAllValue",  -- 获取所有值 🟢
                        "SetValue",  -- 设置值 ✅(文档包含)
                        "GetValue",  -- 获取值 ✅(文档包含)
                        "RandomValue",  -- 随机取值 🟢
                        "HasValue",  -- 是否包含值 🟢
                        "GetCountByValue",  -- 按值统计数量 🟢
                        "IncreasesValue",  -- 增加值 ✅(文档包含)
                        "HasIntersectionByTags",  -- 标签是否有交集 🟢
                    },
                },
                Map = {  -- 表(键值对)模块
                    name = "一维表变量数据",  -- 名称
                    methods = {
                        "SetValueAndCallBack",  -- 设置值并回调 🟢
                        "SetValueAndBlock",  -- 设置值并阻塞 🟢
                        "RemoveValueAndCallBack",  -- 移除值并回调 🟢
                        "RemoveValueAndBlock",  -- 移除值并阻塞 🟢
                        "GetValueAndCallBack",  -- 获取值并回调 🟢
                        "GetValueAndBlock",  -- 获取值并阻塞 🟢
                        "GetIndexValueAndBlock",  -- 获取索引值并阻塞 🟢
                        "GetIndexValueAndCallback",  -- 获取索引值并回调 🟢
                        "GetNumValuesAndCallback",  -- 获取数值并回调 🟢
                        "GetRangeValuesAndCallback",  -- 获取范围值并回调 🟢
                        "SetRankValueAndBlock",  -- 设置排名值并阻塞 🟢
                        "UpdateValueAndCallback",  -- 更新值并回调 🟢
                        "ClearData",  -- 清除数据 🟢
                        "IncreasesRankValueAndBlock",  -- 增加排名值并阻塞 🟢
                        "IncreasesRankValueAndCallback",  -- 增加排名值并回调 🟢
                        "GetRangeIndexsAndCallback",  -- 获取范围索引并回调 🟢
                    },
                },
                Table = {  -- 二维表模块
                    name = "二维表变量数据",  -- 名称
                    methods = {
                        "Clear",  -- 清空 🟢
                        "SetValue",  -- 设置值 ✅(文档包含)
                        "GetValue",  -- 获取值 ✅(文档包含)
                        "GetCols",  -- 获取列数 🟢
                        "GetRows",  -- 获取行数 🟢
                        "RemoveRow",  -- 移除行 🟢
                        "InsertValue",  -- 插入值 🟢
                        "InsertValueByRow",  -- 按行插入值 🟢
                        "GetValuesByCol",  -- 按列获取值 🟢
                        "GetRowIndex",  -- 获取行索引 🟢
                        "GetRowIndexs",  -- 获取行索引列表 🟢
                        "GetColIndex",  -- 获取列索引 🟢
                        "GetAllValue",  -- 获取所有值 🟢
                        "GetTableColKeys",  -- 获取表列键 🟢
                        "UpdateAllValue",  -- 更新所有值 🟢
                    },
                },
            },
        },
        Trigger = {  -- 触发器模块
            items = {
                ArrayTmp = {  -- 临时数组模块
                    methods = {
                        "ObjInTmpGroup",  -- 对象是否在临时组中 🟢
                        "InsertValue",  -- 插入值 🟢
                        "GetNewInviteGroup",  -- 获取新邀请组 🟢
                        "RemoveByValue",  -- 按值移除 🟢
                        "GetAllPlayers",  -- 获取所有玩家 🟢
                        "GetTeamCreatures",  -- 获取队伍生物 🟢
                        "GetAreaMisssile",  -- 获取区域内的导弹 🟢
                        "GetAreaBlocks",  -- 获取区域内的方块 🟢
                        "GetAreaPlayers",  -- 获取区域内的玩家 🟢
                        "GetAreaCreatures",  -- 获取区域内生物 🟢
                        "SplitStrArray",  -- 分割字符串数组 🟢
                        "GetAreaDropItems",  -- 获取区域内的掉落物 🟢
                        "GetTableValuesByCol",  -- 按列获取表值 🟢
                        "GetTableRowIndexs",  -- 获取表行索引列表 🟢
                        "GetTableRowIndex",  -- 获取表行索引 🟢
                        "InsertVarTabValue",  -- 插入变量表值 🟢
                        "SetTableRows",  -- 设置表行数 🟢
                        "GetAreaEntity",  -- 获取区域内实体 🟢
                        "GetAreaObjEntity",  -- 获取区域内对象实体 🟢
                        "GetTeamPlayers",  -- 获取队伍玩家 🟢
                        "GetRelativeActor",  -- 获取相对角色 🟢
                        "GetTeamMobs",  -- 获取队伍生物(怪物) 🟢
                        "GetTeamLivingActor",  -- 获取队伍存活角色 🟢
                        "GetAreaRelativeActors",  -- 获取区域内相对角色 🟢
                        "InsertValuesToArray",  -- 批量插入值到数组 🟢
                        "SetValueToArray",  -- 设置数组值 🟢
                        "ReplaceValueToArray",  -- 替换数组值 🟢
                        "InsertValueToArray",  -- 插入值到数组 🟢
                        "SetVarTabValue",  -- 设置变量表值 🟢
                        "GetVarTabValue",  -- 获取变量表值 🟢
                        "GetVarTabValue",  -- 获取变量表值 🟢
                        "GetActorsByTags",  -- 按标签获取角色 🟢
                    },
                },
                Math = {  -- 数学模块
                    methods = {
                        "MathExtractOpt",  -- 数学提取操作 🟢
                        "MathUnFixedBaseLog",  -- 不定底数对数 🟢
                        "MathXor",  -- 异或运算 🟢
                        "LogicCompareTable",  -- 逻辑比较表 🟢
                        "MathArithmetic",  -- 数学运算 🟢
                        "MathAdd",  -- 加法 🟢
                        "MathSub",  -- 减法 🟢
                        "MathMultiply",  -- 乘法 🟢
                        "MathDivide",  -- 除法 🟢
                        "Round",  -- 四舍五入 🟢
                        "Floor",  -- 向下取整 🟢
                        "Ceil",  -- 向上取整 🟢
                        "Deg",  -- 弧度转角度 🟢
                        "Rad",  -- 角度转弧度 🟢
                        "Abs",  -- 绝对值 🟢
                        "Sqrt",  -- 平方根 🟢
                        "Tostring",  -- 转字符串 🟢
                        "Max",  -- 最大值 🟢
                        "Min",  -- 最小值 🟢
                        "Pow",  -- 幂运算 🟢
                        "Ldexp",  -- 二进制指数运算 🟢
                        "Mod",  -- 取模 🟢
                        "Random",  -- 随机数 🟢
                        "Concat",  -- 拼接 🟢
                        "CompareGreater",  -- 大于比较 🟢
                        "CompareGreaterEqual",  -- 大于等于比较 🟢
                        "CompareLess",  -- 小于比较 🟢
                        "CompareLessEqual",  -- 小于等于比较 🟢
                        "Equal",  -- 等于 🟢
                        "NotEqual",  -- 不等于 🟢
                        "Sin",  -- 正弦 🟢
                        "Cos",  -- 余弦 🟢
                        "Tan",  -- 正切 🟢
                        "TanAngle2Rad",  -- 角度转弧度 🟢
                        "Log10",  -- 以10为底对数 🟢
                        "Log",  -- 对数 🟢
                        "Isnil",  -- 是否为空 🟢
                        "Negate",  -- 取反 🟢
                        "Pow10",  -- 10的幂 🟢
                        "Exp",  -- 指数 🟢
                        "ColorTostring",  -- 颜色转字符串 🟢
                        "V3Tostring",  -- 向量转字符串 🟢
                        "StrToColor",  -- 字符串转颜色 🟢
                        "StrToV3",  -- 字符串转向量 🟢
                        "StrToBool",  -- 字符串转布尔 🟢
                        "ContainStr",  -- 是否包含字符串 🟢
                        "IsPrime",  -- 是否为质数 🟢
                        "IsEven",  -- 是否为偶数 🟢
                        "Isinteger",  -- 是否为整数 🟢
                        "IsNegative",  -- 是否为负数 🟢
                        "IsPositive",  -- 是否为正数 🟢
                        "IsOdd",  -- 是否为奇数 🟢
                        "ModEqualZero",  -- 取模等于零 🟢
                        "DivAndFloor",  -- 除法并向下取整 🟢
                    },
                },
                Component = {  -- 组件模块
                    methods = {
                        "RunCmpBaseFn",  -- 运行组件基础函数 🟢
                        "SetComponentProperty",  -- 设置组件属性 🟢
                        "IncreasesComponentProperty",  -- 增加组件属性 🟢
                        "GetComponentProperty",  -- 获取组件属性 🟢
                        "AddComponent",  -- 添加组件 🟢
                        "RemoveComponent",  -- 移除组件 🟢
                        "CallComponentFunction",  -- 调用组件函数 🟢
                        "CallComponentFunctionVar",  -- 调用组件函数(变量) 🟢
                        "SetEventIsEnable",  -- 设置事件是否启用 🟢
                        "IsEventEnable",  -- 事件是否已启用 🟢
                        "GetIsHasCmp",  -- 是否拥有组件 🟢
                        "CheckCmpFunctionCallType",  -- 检查组件函数调用类型 🟢
                        "AddEvent",  -- 添加事件监听 🟢
                    },
                },
                CustomUI = {  -- 界面模块
                    methods = {
                        "MakeSmoothMoveTo",  -- 制作平滑移动动画(到) 🟢
                        "MakeSmoothRotateTo",  -- 制作平滑旋转动画(到) 🟢
                        "MakeSmoothMoveBy",  -- 制作平滑移动动画(相对) 🟢
                        "MakeSmoothScaleTo",  -- 制作平滑缩放动画(到) 🟢
                        "MakeSmoothScaleBy",  -- 制作平滑缩放动画(相对) 🟢
                        "MakeSmoothRotateBy",  -- 制作平滑旋转动画(相对) 🟢
                        "PlaySmoothAnim",  -- 播放平滑动画 🟢
                        "SetText",  -- 设置文本 🟢
                        "PlayAnim",  -- 播放动画 🟢
                        "MakeElementAnim",  -- 制作元素动画 🟢
                        "MakeUITextAnim",  -- 制作UI文本动画 🟢
                        "GetScreenSize",  -- 获取屏幕尺寸 🟢
                        "GetProgressBarValue",  -- 获取进度条数值 🟢
                        "SetLoaderModelAct",  -- 设置加载模型动作 🟢
                        "GetElementAttrValue",  -- 获取元素属性值 🟢
                        "SetBeaconBand",  -- 设置信标绑定 🟢
                    },
                },
                World = {  -- 世界模块
                    methods = {
                        "PlayParticleEffect",  -- 播放粒子特效 🟢
                        "GetSpawnPoint",  -- 获取出生点 🟢
                        "XyzToPos",  -- XYZ坐标转位置 🟢
                        "SetSkyBoxMapsAnim",  -- 设置天空盒贴图动画 🟢
                        "SetSkyBoxColorAnim",  -- 设置天空盒颜色动画 🟢
                        "SetSkyBoxFilterColorAnim",  -- 设置天空盒滤镜颜色动画 🟢
                        "SetSkyBoxFilterColor",  -- 设置天空盒滤镜颜色 🟢
                        "SetSkyBoxFilterLUT",  -- 设置天空盒滤镜LUT 🟢
                        "SetSkyBoxFilter",  -- 设置天空盒滤镜 🟢
                        "GetDirRayDetection",  -- 获取方向射线检测 🟢
                        "SetSpawnPoint",  -- 设置出生点 🟢
                        "SetSkyBoxFilterTemplate",  -- 设置天空盒滤镜模板 🟢
                        "SpawnProjectileOnPos",  -- 在坐标生成投射物 🟢
                        "StopParticleEffectOnPos",  -- 停止坐标处粒子特效 🟢
                        "StopParticleOnPos",  -- 停止坐标处粒子 🟢
                        "DespawnActor",  -- 移除角色 🟢
                        "PauseSoundEffectOnPos",  -- 暂停坐标处音效 🟢
                        "ResumeSoundEffectOnPos",  -- 恢复坐标处音效 🟢
                        "PaseOrResumeSoundEffectOnPos",  -- 暂停或恢复坐标处音效 🟢
                        "OffsetPos",  -- 偏移坐标 🟢
                        "OffsetPosVal",  -- 偏移坐标值 🟢
                        "CalcHorizontalAngle",  -- 计算水平角度 🟢
                        "SpawnShooterProjectile",  -- 生成发射器投射物 🟢
                        "SpawnShooterProjectileByPos",  -- 按坐标生成发射器投射物 🟢
                        "CalcVerticalAngle",  -- 计算垂直角度 🟢
                        "CalcVectorDirectionAngle",  -- 计算向量方向角度 🟢
                        "SetStorageItem",  -- 设置储物道具 🟢
                        "SetParticleEffectScale",  -- 设置粒子特效缩放 🟢
                        "SetParticleTransform",  -- 设置粒子变换 🟢
                        "GetBiomeGroup",  -- 获取生物群系组 🟢
                        "GetRayLength",  -- 获取射线长度 🟢
                        "DespawnObject",  -- 移除对象 🟢
                        "GetRayBlock",  -- 获取射线方块 🟢
                        "CanMobSpawnOnPosXZ",  -- 生物能否在该坐标生成 🟢
                        "GetCoord",  -- 获取坐标 🟢
                        "CalcDirectionByPos2Pos",  -- 计算两点间方向 🟢
                        "PlayParticle",  -- 播放粒子 🟢
                        "CompareBiomeGroup",  -- 比较生物群系组 🟢
                        "CompareGameMode",  -- 比较游戏模式 🟢
                        "GetContainerGridAttr",  -- 获取容器格子属性 🟢
                        "GetContainerStorageItem",  -- 获取容器储物道具 🟢
                        "SetContainerGridAttr",  -- 设置容器格子属性 🟢
                        "GetLightByPos",  -- 获取坐标光照 🟢
                        "SetLightByPos",  -- 按坐标设置光照 🟢
                        "GetRayDetectionPos",  -- 获取射线检测位置 🟢
                        "IsChunkLoaded",  -- 区块是否已加载 🟢
                        "DespawnAreas",  -- 移除区域 🟢
                    },
                },
                Player = {  -- 玩家模块
                    methods = {
                        "GetBackPackGridID",  -- 获取背包格子ID 🟢
                        "GetShortCutGridID",  -- 获取快捷栏格子ID 🟢
                        "GetEquipGridID",  -- 获取装备格子ID 🟢
                        "GetAimPoint",  -- 获取瞄准点 🟢
                        "GetBackpackItemNum",  -- 获取背包道具数量 🟢
                        "MoveGridItem",  -- 移动格子道具 🟢
                        "GetGridItemNum",  -- 获取格子道具数量 🟢
                        "MakeCamerRotAttr",  -- 制作相机旋转属性 🟢
                        "MakeCamerPosAttr",  -- 制作相机位置属性 🟢
                        "IsMiniVip",  -- 是否为迷你VIP 🟢
                        "MakeCamerFvoAttr",  -- 制作相机视野属性 🟢
                        "NotifyGameInfo2Self",  -- 通知游戏信息给自己 🟢
                        "SetItemDropAttAction",  -- 设置道具掉落附加动作 🟢
                        "ShakeCamera",  -- 震动相机 🟢
                        "StopShakeCamera",  -- 停止相机震动 🟢
                        "SetCameraAnimPos",  -- 设置相机动画位置 🟢
                        "SetCameraAnimPosEx",  -- 设置相机动画位置(扩展) 🟢
                        "SetCameraAnimRot",  -- 设置相机动画旋转 🟢
                        "SetCameraAnimFov",  -- 设置相机动画视野 🟢
                        "SetCameraAttrState",  -- 设置相机属性状态 🟢
                        "SetCameraRotMode",  -- 设置相机旋转模式 🟢
                        "ResetCameraAttr",  -- 重置相机属性 🟢
                        "SetJoinJudge",  -- 设置加入判定 🟢
                        "RotateCamera",  -- 旋转相机 🟢
                        "SetQuitJudge",  -- 设置退出判定 🟢
                        "OpenInnerView",  -- 打开内部界面 🟢
                        "OpenInnerView_FollowTheAuthor",  -- 打开内部界面-关注作者 🟢
                        "OpenInnerView_CollectMaps",  -- 打开内部界面-收藏地图 🟢
                        "OpenInnerView_EvaluateMaps",  -- 打开内部界面-评价地图 🟢
                        "OpenInnerView_InviteFriend",  -- 打开内部界面-邀请好友 🟢
                        "OpenInnerView_StorageBox",  -- 打开内部界面-储物箱 🟢
                        "OpenInnerView_ItemTips",  -- 打开内部界面-道具提示 🟢
                        "OpenInnerView_BuffStatus",  -- 打开内部界面-状态效果 🟢
                        "OpenInnerView_Specialty",  -- 打开内部界面-特产 🟢
                        "OpenInnerView_ItemProcessing",  -- 打开内部界面-道具加工 🟢
                        "OpenInnerView_BackPackTask",  -- 打开内部界面-背包任务 🟢
                        "OpenInnerView_BackPackRole",  -- 打开内部界面-背包角色 🟢
                        "OpenInnerView_BackPackEra",  -- 打开内部界面-背包时代 🟢
                        "OpenInnerView_AnimView",  -- 打开内部界面-动画视图 🟢
                        "OpenInnerView_MiniMap",  -- 打开内部界面-小地图 🟢
                        "OpenInnerView_MiniShop",  -- 打开内部界面-迷你商店 🟢
                        "SetGameDefeat",  -- 设置游戏失败 🟢
                        "SetGameWin",  -- 设置游戏胜利 🟢
                        "SetRevivePoint",  -- 设置复活点 🟢
                        "UseItem",  -- 使用道具 🟢
                        "SetCameraMountPos",  -- 设置相机挂载位置 🟢
                        "SetMobileVibrate",  -- 设置手机震动 🟢
                        "ChangeViewMode",  -- 切换视角模式 🟢
                        "NotifySystemMsg2Self",  -- 通知系统消息给自己 🟢
                        "SetItemThrowAttAction",  -- 设置道具投掷附加动作 🟢
                        "SetCameraMountObj",  -- 设置相机挂载对象 🟢
                        "StopMusic",  -- 停止音乐 🟢
                        "PauseMusic",  -- 暂停音乐 🟢
                        "ResumeMusic",  -- 恢复音乐 🟢
                        "PaseOrResumeMusic",  -- 暂停或恢复音乐 🟢
                        "PlayMusic",  -- 播放音乐 🟢
                        "HasFriend",  -- 是否有好友 🟢
                        "GetFirstInviter",  -- 获取首个邀请人 🟢
                        "ToBackPackGridID",  -- 转换为背包格子ID 🟢
                        "ToShortCutGridID",  -- 转换为快捷栏格子ID 🟢
                        "ToEquipGridID",  -- 转换为装备格子ID 🟢
                        "SetGunActionState",  -- 设置枪械动作状态 🟢
                        "GetRevivePoint",  -- 获取复活点 🟢
                        "GetRayOriginPos",  -- 获取射线起点位置 🟢
                        "GetGridItemID",  -- 获取格子道具ID 🟢
                        "EventGridID2GridEnum",  -- 事件格子ID转格子枚举 🟢
                        "OpenDevGoodsWearHouse",  -- 打开开发者道具仓库 🟢
                    },
                },
                Item = {  -- 道具模块
                    methods = {
                        "CompareItemid",  -- 比较道具ID 🟢
                        "GetBlockFacade",  -- 获取方块外观 🟢
                        "ClearStorageBox",  -- 清空储物箱 🟢
                        "DespawnItemFromStorageBox",  -- 从储物箱移除道具 🟢
                        "ToItemID",  -- 转换为道具ID 🟢
                        "CreateItemToStorageBox",  -- 创建道具到储物箱 🟢
                        "GetFacade",  -- 获取外观 🟢
                    },
                },
                Block = {  -- 方块模块
                    methods = {
                        "ReplaceBluePrint",  -- 替换蓝图 🟢
                        "CreateBlock",  -- 创建方块 🟢
                        "GetBlockID",  -- 获取方块ID 🟢
                        "CheckBlockDir",  -- 检查方块朝向 🟢
                        "DestroyBlockDrop",  -- 销毁方块掉落物 🟢
                        "DestroyBlock",  -- 销毁方块 🟢
                        "SetBlockSwichState",  -- 设置方块开关状态 🟢
                        "SetBlockColor",  -- 设置方块颜色 🟢
                        "SetBlockDir",  -- 设置方块朝向 🟢
                        "CreateSpcBlock",  -- 创建特殊方块 🟢
                        "GetFacade",  -- 获取外观 🟢
                        "GetBlockSwitchStatus",  -- 获取方块开关状态 🟢
                        "CompareBlockID",  -- 比较方块ID 🟢
                    },
                },
                Actor = {  -- 角色模块
                    methods = {
                        "GetProjectileShootMob",  -- 获取投射物发射生物 🟢
                        "GetProjectileShootPlayer",  -- 获取投射物发射玩家 🟢
                        "PlayBodyEffectById",  -- 按ID播放身体特效 🟢
                        "PlayBodyParticleById",  -- 按ID播放身体粒子 🟢
                        "GetBoundSzie",  -- 获取包围盒尺寸 🟢
                        "RemoveImmuneAttackType",  -- 移除免疫攻击类型 🟢
                        "SetActorDir",  -- 设置角色朝向 🟢
                        "SetFaceDir",  -- 设置面部朝向 🟢
                        "KillSelf",  -- 杀死自身 🟢
                        "SetAttr",  -- 设置属性 🟢
                        "ChangActorMoveType",  -- 改变角色移动类型 🟢
                        "SetFaceYaw",  -- 设置面部偏航角 🟢
                        "ActorDoHurt",  -- 角色受伤 🟢
                        "SetPosition",  -- 设置位置 🟢
                        "SetImmuneAttackType",  -- 设置免疫攻击类型 🟢
                        "AppendSpeed",  -- 追加速度 🟢
                        "FindNearestBlock",  -- 查找最近方块 🟢
                        "ChangeCustomModel",  -- 更换自定义模型 🟢
                        "RecoverinitialModel",  -- 恢复初始模型 🟢
                        "SetCmpBaseState",  -- 设置组件基础状态 🟢
                        "SetNickName",  -- 设置昵称 🟢
                        "SetTeam",  -- 设置队伍 🟢
                        "CompareTeam",  -- 比较队伍 🟢
                        "PlaySoundEffectById",  -- 按ID播放音效 🟢
                        "PauseSoundEffectById",  -- 按ID暂停音效 🟢
                        "SetBodyEffectScale",  -- 设置身体特效缩放 🟢
                        "SetBodyParticleTransform",  -- 设置身体粒子变换 🟢
                        "StopBodyEffectById",  -- 按ID停止身体特效 🟢
                        "StopSoundEffectById",  -- 按ID停止音效 🟢
                        "ResumeSoundEffectById",  -- 按ID恢复音效 🟢
                        "PaseOrResumeSoundEffectById",  -- 按ID暂停或恢复音效 🟢
                        "CheckTargetActorType",  -- 检查目标角色类型 🟢
                        "CheckActorType",  -- 检查角色类型 🟢
                        "GetPosition",  -- 获取位置 🟢
                        "TryMoveToPos",  -- 尝试移动到坐标 🟢
                        "ClearActorWithId",  -- 清除指定ID角色 🟢
                        "CompareMovementMode",  -- 比较移动模式 🟢
                        "TryInteractActor",  -- 尝试交互角色 🟢
                        "CheckPickupActionValid",  -- 检查拾取动作是否有效 🟢
                        "GetPickupActorID",  -- 获取拾取角色ID 🟢
                        "SetBtreeVarValue",  -- 设置行为树变量值 🟢
                        "GetBtreeVarValue",  -- 获取行为树变量值 🟢
                        "ObjToAnyObj",  -- 对象转任意对象 🟢
                        "RoleToAnyObj",  -- 角色转任意对象 🟢
                        "IncreasesAttr",  -- 增加属性 🟢
                        "AddOrRemoveTags",  -- 添加或移除标签 🟢
                        "PlayAnimByObj",  -- 按对象播放动画 🟢
                    },
                },
                Monster = {  -- 生物模块
                    methods = {
                        "GetMonsterFacade",  -- 获取生物外观 🟢
                        "GetFacade",  -- 获取外观 🟢
                    },
                },
                Area = {  -- 区域模块
                    methods = {
                        "BlockInArea",  -- 方块是否在区域内 🟢
                        "ReplaceAreaBlock",  -- 替换区域方块 🟢
                        "ObjInArea",  -- 对象是否在区域内 🟢
                        "GetCenterPos",  -- 获取中心坐标 🟢
                        "CloneArea",  -- 克隆区域 🟢
                        "GetRandomPos",  -- 获取随机坐标 🟢
                        "GetCenterFloatPos",  -- 获取中心浮点坐标 🟢
                        "GetRandomFloatPos",  -- 获取随机浮点坐标 🟢
                        "PosInArea",  -- 坐标是否在区域内 🟢
                        "FillBlock",  -- 填充方块 🟢
                        "ClearAllBlock",  -- 清除区域内所有方块 🟢
                        "DestroyAllBlock",  -- 销毁区域内所有方块 🟢
                    },
                },
                Buff = {  -- 状态效果模块
                    methods = {
                        "CompareBuff",  -- 比较状态效果 🟢
                        "RemoveBuff",  -- 移除状态效果 🟢
                        "ReplaceBuff",  -- 替换状态效果 🟢
                        "AddBuff",  -- 添加状态效果 🟢
                        "HasBuff",  -- 是否拥有状态效果 🟢
                        "GetBuffLeftTime",  -- 获取状态效果剩余时间 🟢
                    },
                },
                Graphics = {  -- 图文信息模块
                    methods = {
                        "MakeGraphicsArrowToPos",  -- 制作指向坐标的箭头图文 🟢
                        "MakeGraphicsLineToPos",  -- 制作指向坐标的线图文 🟢
                        "MakeGraphicsSurfaceToPos",  -- 制作指向坐标的面图文 🟢
                        "CreateGraphicsByPos",  -- 在坐标创建图文 🟢
                        "CreateGraphicsByPos2",  -- 在坐标创建图文V2 🟢
                        "RemoveGraphicsByPos",  -- 按坐标移除图文 🟢
                        "GetInnerGraphicsOffset",  -- 获取内部图文偏移 🟢
                        "CreateGraphicsByActor",  -- 在角色创建图文 🟢
                        "CreateGraphicsByActor2",  -- 在角色创建图文V2 🟢
                        "MakeGraphicsNavPathToPos",  -- 制作指向坐标的导航路径图文 🟢
                        "RemoveGraphicsByObjID",  -- 按对象ID移除图文 🟢
                    },
                },
                Backpack = {  -- 背包模块
                    methods = {
                        "CreateItemID",  -- 创建道具ID 🟢
                        "DiscardItemByID",  -- 按ID丢弃道具 🟢
                        "AddItem",  -- 添加道具 🟢
                        "RemoveItem",  -- 移除道具 🟢
                        "SetGridItem",  -- 设置格子道具 🟢
                        "RemoveGridItem",  -- 移除格子道具 🟢
                        "EnoughSpaceForItem",  -- 是否有足够空间放道具 🟢
                        "ActEquipUpByResID",  -- 按资源ID穿上装备 🟢
                        "ActEquipOffByEquipID",  -- 按装备ID卸下装备 🟢
                        "ActDestructEquip",  -- 销毁装备 🟢
                        "GetShurtItemnum",  -- 获取快捷栏道具数量 🟢
                        "GetShurtItemid",  -- 获取快捷栏道具ID 🟢
                        "PlayShortCutIxEffect",  -- 播放快捷栏索引特效 🟢
                        "PlayShortCutIxParticle",  -- 播放快捷栏索引粒子 🟢
                        "StopShortCutIxEffect",  -- 停止快捷栏索引特效 🟢
                        "PlayShortCutItemEffect",  -- 播放快捷栏道具特效 🟢
                        "PlayShortCutItemParticle",  -- 播放快捷栏道具粒子 🟢
                        "StopShortCutItemEffect",  -- 停止快捷栏道具特效 🟢
                        "GetGridInfos",  -- 获取格子信息 🟢
                        "LoadGridInfos",  -- 加载格子信息 🟢
                        "DecodeGridInfo",  -- 解码格子信息 🟢
                        "EncodeTableGridInfo",  -- 编码表格子信息 🟢
                        "SetGridsLock",  -- 设置格子锁定 🟢
                        "ClearGrids",  -- 清空格子 🟢
                        "SetBackPackNum",  -- 设置背包数量 🟢
                    },
                },
                GameObject = {  -- 游戏对象模块
                    methods = {
                        "CreatePrefabInst",  -- 创建预制体实例 🟢
                        "CreatePrefabInstEx",  -- 创建预制体实例(扩展) 🟢
                        "GetPrefabName",  -- 获取预制体名称 🟢
                        "GetPrefabDes",  -- 获取预制体描述 🟢
                        "CreateSinglePrefabInst",  -- 创建单个预制体实例 🟢
                        "GetObjectPrefab",  -- 获取对象预制体 🟢
                    },
                },
                KvMap = {  -- 键值表模块
                    methods = {
                        "SetOrderDataBykey",  -- 按键设置有序数据 🟢
                        "RemoveOrderDataByKey",  -- 按键移除有序数据 🟢
                        "GetOrderDataBykey",  -- 按键获取有序数据 🟢
                        "SetDataListBykey",  -- 按键设置数据列表 🟢
                        "GetDataListBykey",  -- 按键获取数据列表 🟢
                        "RemoveDataListBykey",  -- 按键移除数据列表 🟢
                    },
                },
                Timeline = {  -- 剧情动画模块
                    methods = {
                        "PlayForPlayer",  -- 为玩家播放 🟢
                        "Pause",  -- 暂停 🟢
                        "Resume",  -- 恢复 🟢
                        "SkipForPlayer",  -- 为玩家跳过 🟢
                        "GetDisplayName",  -- 获取显示名称 🟢
                    },
                },
            },
            methods = {
                "GetLastCreateCreatureObjId",  -- 获取最后创建生物对象ID 🟢
                "Substring",  -- 截取子串 🟢
                "GetLastCreateCreatureId",  -- 获取最后创建生物ID 🟢
                "String2Playerid",  -- 字符串转玩家ID 🟢
                "GetStringLength",  -- 获取字符串长度 🟢
                "Wait",  -- 等待 🟢
                "Str2Obj",  -- 字符串转对象 🟢
                "AnyValue2Str",  -- 任意值转字符串 🟢
                "GetElementID",  -- 获取元素ID 🟢
                "GetRandomColor",  -- 获取随机颜色 🟢
                "GetLastCreateBlockId",  -- 获取最后创建方块ID 🟢
                "GetLastCreateEffectId",  -- 获取最后创建特效ID 🟢
                "SetLastCreateEffectId",  -- 设置最后创建特效ID 🟢
                "SetLastCreateItemId",  -- 设置最后创建道具ID 🟢
                "GetLastCreateItemId",  -- 获取最后创建道具ID 🟢
                "SplitStr",  -- 分割字符串 🟢
                "DoObjOrArrayAction",  -- 对对象或数组执行操作 🟢
                "GetPrefabIdStr",  -- 获取预制体ID字符串 🟢
                "GetPrefabInfo",  -- 获取预制体信息 🟢
                "AllSound",  -- 所有音效 🟢
                "AllAttackType",  -- 所有攻击类型 🟢
                "AllStatus",  -- 所有状态 🟢
                "SetLastCreateCreatureId",  -- 设置最后创建生物ID 🟢
                "SetLastCreateBlockId",  -- 设置最后创建方块ID 🟢
                "GetPlayerId",  -- 获取玩家ID 🟢
                "GetMobId",  -- 获取生物ID 🟢
                "ToPlayerId",  -- 转玩家ID 🟢
                "ToMobId",  -- 转生物ID 🟢
                "PrintTag",  -- 打印标签 🟢
                "GetWorld",  -- 获取世界 🟢
                "GetUIObject",  -- 获取UI对象 🟢
                "TransmitToCategoryRoom",  -- 传送到分类房间 🟡[权限不足]
                "GetEffectParams",  -- 获取特效参数 🟢
                "GetAttrVal",  -- 获取属性值 🟢
            },
            dismethods = {},
        },
        Area = {  -- 区域模块
            name = "区域模块",  -- 名称
            methods = {
                "BlockInArea",  -- 方块是否在区域内 ✅(文档包含)
                "GetAreaBlockTypes",  -- 获取区域内方块类型 ✅(文档包含)
                "GetAreaPlayers",  -- 获取区域内的玩家 ✅(文档包含)
                "GetAreaRectRange",  -- 获取区域矩形范围 ✅(文档包含)
                "CreateAreaRectByLen",  -- 按长度创建矩形区域 🟢
                "ReplaceAreaBlock",  -- 替换区域方块 ✅(文档包含)
                "FillBlockAreaRange",  -- 填充区域范围方块 ✅(文档包含)
                "DestroyAllBlock",  -- 销毁区域内所有方块 ✅(文档包含)
                "ObjInArea",  -- 对象是否在区域内 ✅(文档包含)
                "CloneAreaRange",  -- 克隆区域范围 ✅(文档包含)
                "PosInArea",  -- 坐标是否在区域内 ✅(文档包含)
                "GetAreaCreatures",  -- 获取区域内生物 ✅(文档包含)
                "ClearAllBlock",  -- 清除区域内所有方块 ✅(文档包含)
                "GetAllObjsInAreaRange",  -- 获取区域范围内的所有对象 ✅(文档包含)
                "GetRelativeActors",  -- 获取相对角色 ✅(文档包含)
                "GetBlockNum",  -- 获取方块数量 ✅(文档包含)
                "CreateAreaRectByRange",  -- 按范围创建矩形区域 ✅(文档包含)
                "GetRandomPos",  -- 获取随机坐标 ✅(文档包含)
                "CreateAreaPrefab",  -- 创建区域预制体 ✅(文档包含)
                "GetAreaUuidByObjId",  -- 通过对象ID获取区域UUID ✅(文档包含)
                "DestroyArea",  -- 销毁区域 ✅(文档包含)
                "GetAreaCenter",  -- 获取区域中心 ✅(文档包含)
                "GetAreaRectLength",  -- 获取区域矩形长度 ✅(文档包含)
                "CloneAreaBlock",  -- 克隆区域方块 ✅(文档包含)
                "GetAllPlayersInAreaRange",  -- 获取区域范围内所有玩家 ✅(文档包含)
                "GetAllCreaturesInAreaRange",  -- 获取区域范围内所有生物 ✅(文档包含)
                "ClearAllBlockAreaRange",  -- 清除区域范围内的所有方块 ✅(文档包含)
                "ReplaceAreaRangeBlock",  -- 替换区域范围方块 ✅(文档包含)
                "GetRandomAirPos",  -- 获取随机空气位置 ✅(文档包含)
                "CheckRangeCanPlace",  -- 检查范围是否可放置 ✅(文档包含)
            },
        },
        Listen = {  -- 监听模块
            methods = {
                "AddGraphicsListenParam",  -- 添加图文信息监听参数 🟢
            },
        },
        Timer = {  -- 计时器模块
            name = "计时器模块",  -- 名称
            methods = {
                "StartBackwardTimer",  -- 开始倒计时器 ✅(文档包含)
                "StartForwardTimer",  -- 开始正计时器 ✅(文档包含)
                "PauseTimer",  -- 暂停计时器 ✅(文档包含)
                "ResumeTimer",  -- 恢复计时器 ✅(文档包含)
                "ChangeTimerTime",  -- 修改计时器时间 ✅(文档包含)
                "ShowTimerWnd",  -- 显示计时器窗口 ✅(文档包含)
                "HideTimerWnd",  -- 隐藏计时器窗口 ✅(文档包含)
                "StopTimer",  -- 停止计时器 ✅(文档包含)
                "GetTimerTime",  -- 获取计时器时间 ✅(文档包含)
                "IsExist",  -- 是否存在 ✅(文档包含)
                "CreateTimer",  -- 创建计时器 ✅(文档包含)
                "DeleteTimer",  -- 删除计时器 ✅(文档包含)
            },
        },
        Item = {  -- 道具模块
            name = "道具模块",  -- 名称
            methods = {
                "GetAttr",  -- 获取属性 ✅(文档包含)
                "RandomProjectileID",  -- 随机投射物ID ✅(文档包含)
                "GetItemDesc",  -- 获取道具描述 ✅(文档包含)
                "RandomItemID",  -- 随机道具ID ✅(文档包含)
                "GetItemName",  -- 获取道具名称 ✅(文档包含)
                "GetGunBaseDesc",  -- 获取枪械基础描述 🟡[权限不足]
                "GetCustomGunAttr",  -- 获取自定义枪械属性 ✅(文档包含)
                "GetFacade",  -- 获取外观 ✅(文档包含)
                "GetItemModelComp",  -- 获取道具模型组件 🟡[权限不足]
                "CreateGunInWorld",  -- 在世界中创建枪械 ✅(文档包含)
                "CreateItemInstInBackpack",  -- 在背包创建道具实例 ✅(文档包含同名:Backpack)
                "CreateItemInstInWorld",  -- 在世界中创建道具实例 ✅(文档包含)
                "SetObjData",  -- 设置对象数据 🟡[权限不足]
                "GetObjData",  -- 获取对象数据 🟡[权限不足]
                "SetObjDataByGrid",  -- 按格子设置对象数据 🟡[权限不足]
                "GetObjDataByGrid",  -- 按格子获取对象数据 🟡[权限不足]
                "GetEquipItemGridID",  -- 获取装备道具格子ID ✅(文档包含)
                "ModifyGunAttribute",  -- 修改枪械属性 ✅(文档包含)
                "GetGunAttribute",  -- 获取枪械属性 ✅(文档包含)
                "GetGunPrefabAttribute",  -- 获取枪械预制体属性 ✅(文档包含)
                "GetItemIdByInstanceId",  -- 通过实例ID获取道具ID ✅(文档包含)
                "GetResIdByInstanceId",  -- 通过实例ID获取资源ID 🟢
                "AddSubModelPart",  -- 添加子模型部件 ✅(文档包含)
                "DeleteSubModelPart",  -- 删除子模型部件 ✅(文档包含)
                "ReplaceSubModelPart",  -- 替换子模型部件 ✅(文档包含)
                "SetStringCustomData",  -- 设置字符串自定义数据 ✅(文档包含)
                "SetBoolCustomData",  -- 设置布尔自定义数据 ✅(文档包含)
                "SetNumberCustomData",  -- 设置数字自定义数据 ✅(文档包含)
                "SetObjCustomData",  -- 设置对象自定义数据 ✅(文档包含)
                "SetArrayCustomData",  -- 设置数组自定义数据 ✅(文档包含)
                "GetStringCustomData",  -- 获取字符串自定义数据 ✅(文档包含)
                "GetBoolCustomData",  -- 获取布尔自定义数据 ✅(文档包含)
                "GetNumberCustomData",  -- 获取数字自定义数据 ✅(文档包含)
                "GetObjCustomData",  -- 获取对象自定义数据 ✅(文档包含)
                "GetArrayCustomData",  -- 获取数组自定义数据 ✅(文档包含)
                "GetCraftIDNum",  -- 获取合成配方ID数量 ✅(文档包含)
                "GetCraftMaterialAndNum",  -- 获取合成材料及数量 ✅(文档包含)
                "GetGridAttr",  -- 获取格子属性 ✅(文档包含)
                "GetItemInstFacade",  -- 获取道具实例外观 ✅(文档包含)
                "GetTags",  -- 获取标签 ✅(文档包含)
                "CreateBindItemInBackpack",  -- 在背包创建绑定道具 🟡[权限不足]
                "IsBindItem",  -- 是否为绑定道具 🟡[权限不足]
                "LevelUpEquipOrGunForPlayer",  -- 为玩家升级装备或枪械 🟡[权限不足]
                "FreshPowerEquipOrGunForPlayer",  -- 为玩家刷新装备/枪械能量 🟡[权限不足]
                "EmpowerEquipOrGunForPlayer",  -- 为玩家充能装备/枪械 🟡[权限不足]
            },
        },
        Block = {  -- 方块模块
            name = "方块模块",  -- 名称
            methods = {
                "GetBlockData",  -- 获取方块数据 ✅(文档包含)
                "GetBlockSettingAttState",  -- 获取方块设置属性状态 ✅(文档包含)
                "GetBlockID",  -- 获取方块ID ✅(文档包含)
                "SetBlockSettingAttState",  -- 设置方块设置属性状态 ✅(文档包含)
                "GetBlockSwitchStatus",  -- 获取方块开关状态 ✅(文档包含)
                "SetBlockSwitchStatus",  -- 设置方块开关状态 ✅(文档包含)
                "RandomBlockID",  -- 随机方块ID ✅(文档包含)
                "ReplaceBluePrint",  -- 替换蓝图 ✅(文档包含)
                "DestroyBlock",  -- 销毁方块 ✅(文档包含)
                "SetBlockSwichState",  -- 设置方块开关状态 🟢
                "SetBlockColor",  -- 设置方块颜色 ✅(文档包含)
                "SetBlockDir",  -- 设置方块朝向 ✅(文档包含)
                "GetBlockDefName",  -- 获取方块定义名称 ✅(文档包含)
                "GetBlockDefDesc",  -- 获取方块定义描述 ✅(文档包含)
                "ReplaceBlock",  -- 替换方块 ✅(文档包含)
                "GetBlockDir",  -- 获取方块朝向 ✅(文档包含)
                "PlaceBlock",  -- 放置方块 ✅(文档包含)
                "PlayAnim",  -- 播放动画 ✅(文档包含)
                "GetFacade",  -- 获取外观 ✅(文档包含)
                "SetBlockAll",  -- 设置全部方块 🟢
                "IsSolidBlock",  -- 是否为实心方块 ✅(文档包含)
                "IsLiquidBlock",  -- 是否为液体方块 ✅(文档包含)
                "IsAirBlock",  -- 是否为空气方块 ✅(文档包含)
                "PlayCrackEffect",  -- 播放裂纹特效 ✅(文档包含)
                "PlayDestroyEffect",  -- 播放销毁特效 ✅(文档包含)
                "GetBlockDropItemType",  -- 获取方块掉落物类型 ✅(文档包含)
                "GetBlockDropExp",  -- 获取方块掉落经验 ✅(文档包含)
                "GetBlockPowerStatus",  -- 获取方块电力状态 ✅(文档包含)
                "SetBlockData",  -- 设置方块数据 ✅(文档包含)
                "SetBlockTextureColor",  -- 设置方块贴图颜色 ✅(文档包含)
                "CreateObsBluePrint",  -- 创建方块蓝图 🟡[权限不足]
                "PlaceBluePrint",  -- 放置蓝图 🟡[权限不足]
                "UnbindBluePrintRegion",  -- 解除蓝图区域绑定 🟡[权限不足]
                "SaveBluePrintRegionData",  -- 保存蓝图区域数据 🟡[权限不足]
                "BluePrintSaveAsNewId",  -- 蓝图另存为新ID 🟡[权限不足]
                "BluePrintSetUploadInteral",  -- 设置蓝图上传间隔 🟡[权限不足]
                "DeleteBluePrint",  -- 删除蓝图 🟡[权限不足]
                "GetBluePrintBlockInfo",  -- 获取蓝图方块信息 🟡[权限不足]
                "CaptureAndUploadScreenshot",  -- 截屏并上传 🟡[权限不足]
                "LoadObsBluePrint",  -- 加载方块蓝图 🟡[权限不足]
                "UnloadObsBluePrint",  -- 卸载方块蓝图 🟡[权限不足]
                "StopPlaceObsBluePrint",  -- 停止放置方块蓝图 🟡[权限不足]
                "GetObsBluePrintStatus",  -- 获取方块蓝图状态 🟡[权限不足]
                "GetObsBluePrintPos",  -- 获取方块蓝图位置 🟡[权限不足]
            },
        },
        Graphics = {  -- 图文信息模块
            name = "图文信息模块",  -- 名称
            methods = {
                "MakeflotageText",  -- 制作飘浮文字 ✅(文档包含)
                "RemoveGraphicsByPos",  -- 按坐标移除图文 ✅(文档包含)
                "MakeGraphicsArrowToPos",  -- 制作指向坐标的箭头图文 ✅(文档包含)
                "GetInnerGraphicsOffset",  -- 获取内部图文偏移 ✅(文档包含)
                "MakeGraphicsSurfaceToPos",  -- 制作指向坐标的面图文 ✅(文档包含)
                "MakeGraphicsArrowToActor",  -- 制作指向角色的箭头图文 ✅(文档包含)
                "MakeGraphicsLineToActor",  -- 制作指向角色的线图文 ✅(文档包含)
                "MakeGraphicsSurfaceToActor",  -- 制作指向角色的面图文 ✅(文档包含)
                "MakeGraphicsImage",  -- 制作图片图文 ✅(文档包含)
                "CreateGraphicsTxtByPos",  -- 在坐标创建文字图文 ✅(文档包含)
                "CreateGraphicsArrowByPosToActor",  -- 创建坐标指向角色的箭头图文 ✅(文档包含)
                "CreateGraphicsArrowByPosToPos",  -- 创建坐标指向坐标的箭头图文 ✅(文档包含)
                "CreateGraphicsLineByPosToActor",  -- 创建坐标指向角色的线图文 ✅(文档包含)
                "CreateGraphicsLineByPosToPos",  -- 创建坐标指向坐标的线图文 ✅(文档包含)
                "CreateGraphicsSurfaceByPosToActor",  -- 创建坐标指向角色的面图文 ✅(文档包含)
                "CreateGraphicsSurfaceByPosToPos",  -- 创建坐标指向坐标的面图文 ✅(文档包含)
                "CreateGraphicsImageByPos",  -- 在坐标创建图片图文 ✅(文档包含)
                "CreateGraphicsTxtByActor",  -- 在角色创建文字图文 ✅(文档包含)
                "CreateGraphicsArrowByActorToActor",  -- 创建角色指向角色的箭头图文 ✅(文档包含)
                "CreateGraphicsArrowByActorToPos",  -- 创建角色指向坐标的箭头图文 ✅(文档包含)
                "CreateGraphicsLineByActorToActor",  -- 创建角色指向角色的线图文 ✅(文档包含)
                "CreateGraphicsLineByActorToPos",  -- 创建角色指向坐标的线图文 ✅(文档包含)
                "CreateGraphicsSurfaceByActorToActor",  -- 创建角色指向角色的面图文 ✅(文档包含)
                "CreateGraphicsSurfaceByActorToPos",  -- 创建角色指向坐标的面图文 ✅(文档包含)
                "CreateGraphicsImageByActor",  -- 在角色创建图片图文 ✅(文档包含)
                "CreateflotageTextByPos",  -- 在坐标创建飘浮文字 ✅(文档包含)
                "CreateflotageTextByActor",  -- 在角色创建飘浮文字 ✅(文档包含)
                "CreateGraphicsProgressByPos",  -- 在坐标创建进度图文 ✅(文档包含)
                "CreateGraphicsProgressByActor",  -- 在角色创建进度图文 ✅(文档包含)
                "CreateGraphicsNavPathByActorToPos",  -- 创建角色到坐标的导航路径图文 ✅(文档包含)
                "MakeGraphicsLineToPos",  -- 制作指向坐标的线图文 ✅(文档包含)
                "MakeGraphicsText",  -- 制作文字图文 ✅(文档包含)
                "MakeGraphicsProgress",  -- 制作进度图文 ✅(文档包含)
                "MakeGraphicsNavPathToPos",  -- 制作指向坐标的导航路径图文 ✅(文档包含)
                "RemoveGraphicsByObjID",  -- 按对象ID移除图文 ✅(文档包含)
                "UpdateGraphicsTextById",  -- 按ID更新图文文字 ✅(文档包含)
                "UpdateGraphicsProgressById",  -- 按ID更新图文进度 ✅(文档包含)
                "ReplaceAllGraphics",  -- 替换所有图文 ✅(文档包含)
                "CreateBrushByPos",  -- 在坐标创建画笔 ✅(文档包含)
                "RemoveGraphicsByGraphicsID",  -- 按图文ID移除图文 ✅(文档包含)
            },
        },
        CustomUI = {  -- 界面模块
            name = "界面模块",  -- 名称
            methods = {
                "TurnSliderToPos",  -- 滑动条转到指定位置 ✅(文档包含)
                "SetSliderDir",  -- 设置滑动条方向 ✅(文档包含)
                "SetSliderBarImg",  -- 设置滑动条图片 ✅(文档包含)
                "CreateElement",  -- 创建元素 ✅(文档包含)
                "CloneElement",  -- 克隆元素 ✅(文档包含)
                "ChangeParent",  -- 更换父级 ✅(文档包含)
                "SetProgressBarValue",  -- 设置进度条数值 ✅(文档包含)
                "SetProgressBarResId",  -- 设置进度条资源ID ✅(文档包含)
                "SetFontSize",  -- 设置字体大小 ✅(文档包含)
                "SmoothIncreaseProgress",  -- 平滑增加进度 ✅(文档包含)
                "GetItemIcon",  -- 获取道具图标 ✅(文档包含)
                "GetMonsterObjIcon",  -- 获取生物对象图标 ✅(文档包含)
                "GetMonsterIcon",  -- 获取生物图标 ✅(文档包含)
                "SetColor",  -- 设置颜色 ✅(文档包含)
                "GetBlockIcon",  -- 获取方块图标 ✅(文档包含)
                "SetPosition",  -- 设置位置 ✅(文档包含)
                "SetTexture",  -- 设置贴图 ✅(文档包含)
                "SetSize",  -- 设置尺寸 ✅(文档包含)
                "SetSpineAnimID",  -- 设置骨骼动画ID ✅(文档包含)
                "SetState",  -- 设置状态 ✅(文档包含)
                "GetStatusIcon",  -- 获取状态图标 ✅(文档包含)
                "SetAlpha",  -- 设置透明度 ✅(文档包含)
                "SetText",  -- 设置文本 ✅(文档包含)
                "SetRelationSize",  -- 设置相对尺寸 ✅(文档包含)
                "ShowElement",  -- 显示元素 ✅(文档包含)
                "HideElement",  -- 隐藏元素 ✅(文档包含)
                "RotateElement",  -- 旋转元素 ✅(文档包含)
                "SetRelationPosition",  -- 设置相对位置 ✅(文档包含)
                "SmoothMoveTo",  -- 平滑移动到 ✅(文档包含)
                "SmoothMoveBy",  -- 平滑移动(相对) ✅(文档包含)
                "SmoothScaleTo",  -- 平滑缩放到 ✅(文档包含)
                "SmoothScaleBy",  -- 平滑缩放(相对) ✅(文档包含)
                "SmoothRotateTo",  -- 平滑旋转到 ✅(文档包含)
                "SmoothRotateBy",  -- 平滑旋转(相对) ✅(文档包含)
                "PlayElementAnim",  -- 播放元素动画 ✅(文档包含)
                "StopAnim",  -- 停止动画 ✅(文档包含)
                "SetLoaderModel",  -- 设置加载模型 ✅(文档包含)
                "SetLoaderModelScale",  -- 设置加载模型缩放 ✅(文档包含)
                "SetLoaderModelDir",  -- 设置加载模型朝向 ✅(文档包含)
                "GetRoleIcon",  -- 获取角色图标 ✅(文档包含)
                "GetRoleHeadIcon",  -- 获取角色头像图标 ✅(文档包含)
                "SetLoaderModelAct",  -- 设置加载模型动作 ✅(文档包含)
                "SetLoaderModelPosition",  -- 设置加载模型位置 ✅(文档包含)
                "GetScreenSize",  -- 获取屏幕尺寸 ✅(文档包含)
                "GetProgressBarValue",  -- 获取进度条数值 ✅(文档包含)
                "SmoothChangeProgress",  -- 平滑改变进度 ✅(文档包含)
                "GetShortcutIcon",  -- 获取快捷栏图标 ✅(文档包含)
                "SetScale",  -- 设置缩放 ✅(文档包含)
                "SetFloatDamageTxt",  -- 设置飘字伤害文本 ✅(文档包含)
                "SmoothScaleByEx",  -- 平滑缩放(扩展) ✅(文档包含)
                "DeleteElement",  -- 删除元素 ✅(文档包含)
                "SetPositionBindActor",  -- 设置位置绑定角色 🟢
                "RemovePositionBindActor",  -- 移除位置绑定角色 🟢
                "SetPositionBandBlock",  -- 设置位置绑定方块 🟢
                "RemovePositionBandBlock",  -- 移除位置绑定方块 🟢
                "SetSysSettingBtnVisible",  -- 设置系统设置按钮可见性 🟡[权限不足]
                "GetElementAttrValue",  -- 获取元素属性值 🟡[权限不足]
                "GetUIViewAttrValue",  -- 获取界面视图属性值 🟡[权限不足]
                "SetBeaconMapType",  -- 设置信标地图类型 🟢
                "SetBeaconBandPos",  -- 设置信标绑定位置 ✅(文档包含)
                "SetBeaconObjId",  -- 设置信标对象ID ✅(文档包含)
                "SetBeaconOffset",  -- 设置信标偏移 ✅(文档包含)
                "SetBeaconClampType",  -- 设置信标约束类型 ✅(文档包含)
                "SetBeaconRadius",  -- 设置信标半径 ✅(文档包含)
                "SetUrlIcon",  -- 设置URL图标 🟡[权限不足]
                "SetBeaconMargin",  -- 设置信标边距 ✅(文档包含)
            },
        },
        Chat = {  -- 聊天模块
            name = "消息模块",  -- 名称
            methods = {
                "SendChat",  -- 发送聊天消息 🟢
                "SendSystemMsg",  -- 发送系统消息 ✅(文档包含)
            },
        },
        Actor = {  -- 角色模块
            name = "角色模块",  -- 名称
            methods = {
                "GetRidingActorObjId",  -- 获取骑乘角色对象ID ✅(文档包含)
                "GetFaceDirection",  -- 获取面部朝向 ✅(文档包含)
                "PlayBodyEffectById",  -- 按ID播放身体特效 🟢
                "PlayBodyParticleById",  -- 按ID播放身体粒子 ✅(文档包含)
                "GetActionAttrState",  -- 获取动作属性状态 🟢
                "RandomFacadeID",  -- 随机外观ID ✅(文档包含)
                "SetAttr",  -- 设置属性 ✅(文档包含)
                "GetItemId",  -- 获取道具ID ✅(文档包含)
                "GetBoundSzie",  -- 获取包围盒尺寸 ✅(文档包含)
                "GetEyeHeight",  -- 获取眼睛高度 ✅(文档包含)
                "GetObjType",  -- 获取对象类型 ✅(文档包含)
                "IsExist",  -- 是否存在 ✅(文档包含)
                "SetPosition",  -- 设置位置 ✅(文档包含)
                "ClearActorWithId",  -- 清除指定ID角色 ✅(文档包含)
                "GetDropItemNum",  -- 获取掉落物数量 ✅(文档包含)
                "IsPlayer",  -- 是否为玩家 ✅(文档包含)
                "SetImmuneType",  -- 设置免疫类型 ✅(文档包含)
                "KillSelf",  -- 杀死自身 ✅(文档包含)
                "ChangActorMoveType",  -- 改变角色移动类型 ✅(文档包含)
                "SetFaceYaw",  -- 设置面部偏航角 ✅(文档包含)
                "AppendSpeed",  -- 追加速度 ✅(文档包含)
                "FindNearestBlock",  -- 查找最近方块 ✅(文档包含)
                "GetAttr",  -- 获取属性 ✅(文档包含)
                "RecoverinitialModel",  -- 恢复初始模型 ✅(文档包含)
                "SetCmpBaseState",  -- 设置组件基础状态 🟢
                "GetCmpBaseState",  -- 获取组件基础状态 🟢
                "SetActorPermissions",  -- 设置角色权限 ✅(文档包含)
                "GetActorPermissions",  -- 获取角色权限 ✅(文档包含)
                "SetActionAttrState",  -- 设置动作属性状态 🟢
                "SetNickName",  -- 设置昵称 ✅(文档包含)
                "GetNickName",  -- 获取昵称 ✅(文档包含)
                "ShowNickName",  -- 显示昵称 ✅(文档包含)
                "SetTeam",  -- 设置队伍 ✅(文档包含)
                "PlaySoundEffectById",  -- 按ID播放音效 ✅(文档包含)
                "PauseSoundEffectById",  -- 按ID暂停音效 ✅(文档包含)
                "SetBodyEffectScale",  -- 设置身体特效缩放 🟢
                "SetBodyParticleTransform",  -- 设置身体粒子变换 ✅(文档包含)
                "StopBodyEffectById",  -- 按ID停止身体特效 ✅(文档包含)
                "StopSoundEffectById",  -- 按ID停止音效 ✅(文档包含)
                "GetActorDir",  -- 获取角色朝向 🟢
                "TryMoveToPos",  -- 尝试移动到坐标 ✅(文档包含)
                "GetFaceYaw",  -- 获取面部偏航角 ✅(文档包含)
                "GetActorFacade",  -- 获取角色外观 ✅(文档包含)
                "ChangeCustomModel",  -- 更换自定义模型 ✅(文档包含)
                {
                    name = "GetPosition",  -- 方法名：获取位置
                    envType = 3,  -- 环境类型
                },
                "ActorHurt",  -- 角色受伤 ✅(文档包含)
                "GetTeam",  -- 获取队伍 ✅(文档包含)
                "GetDefID",  -- 获取定义ID 🟢
                "SetFacePitch",  -- 设置面部俯仰角 ✅(文档包含)
                "GetFacePitch",  -- 获取面部俯仰角 ✅(文档包含)
                "PlayAnim",  -- 播放动画 ✅(文档包含)
                "PlayHandAnim",  -- 播放手部动画 ✅(文档包含)
                "TryMoveToActor",  -- 尝试移动到角色 ✅(文档包含)
                "SetFaceDirection",  -- 设置面部朝向 ✅(文档包含)
                "GetActorMovementMode",  -- 获取角色移动模式 ✅(文档包含)
                "MountActor",  -- 骑乘角色 ✅(文档包含)
                "DisMountActor",  -- 解除骑乘 ✅(文档包含)
                "SetMountActorAttr",  -- 设置骑乘角色属性 🟢
                "PickupActor",  -- 拾取角色 ✅(文档包含)
                "TryPickupActorForward",  -- 尝试向前拾取角色 ✅(文档包含)
                "DropActor",  -- 放下角色 ✅(文档包含)
                "EscapePickup",  -- 逃脱拾取 ✅(文档包含)
                "WhitList_StopSkill",  -- 白名单停止技能 🟡[权限不足]
                "AddHp",  -- 增加生命值 ✅(文档包含)
                "GetMaxHP",  -- 获取最大生命值 ✅(文档包含)
                "RotateFaceToActor",  -- 面部转向角色 ✅(文档包含)
                "GetCurMapId",  -- 获取当前地图ID 🟢
                "GetObjWorldId",  -- 获取对象世界ID ✅(文档包含)
                "SetBtreeBBvalue",  -- 设置行为树黑板值 🟢
                "GetBtreeBBvalue",  -- 获取行为树黑板值 🟢
                "GetDropItemInstanceId",  -- 获取掉落物实例ID ✅(文档包含)
                "SetBtreeVarValue",  -- 设置行为树变量值 ✅(文档包含)
                "GetBtreeVarValue",  -- 获取行为树变量值 ✅(文档包含)
                "SetAblePick",  -- 设置可拾取 ✅(文档包含)
                "GetEntityFacade",  -- 获取实体外观 ✅(文档包含)
                "GetMotion",  -- 获取动作 ✅(文档包含)
                "HasActor",  -- 是否有角色 🟢
                "SetBeHurtTarget",  -- 设置受伤目标 ✅(文档包含)
                "Jump",  -- 跳跃 ✅(文档包含)
                "PickupItem",  -- 拾取道具 ✅(文档包含)
                "CompareMainModel",  -- 比较主模型 ✅(文档包含)
                "GetPickupObjID",  -- 获取拾取对象ID ✅(文档包含)
                "IncreasesAttr",  -- 增加属性 ✅(文档包含)
                "HasTags",  -- 是否拥有标签 ✅(文档包含)
                "AddTags",  -- 添加标签 ✅(文档包含)
                "RemoveTags",  -- 移除标签 ✅(文档包含)
                "ClearTags",  -- 清除标签 ✅(文档包含)
                "GetTags",  -- 获取标签 ✅(文档包含)
                "PlayAnimByObj",  -- 按对象播放动画 ✅(文档包含)
                "EmitByShooter",  -- 由发射者发射 🟢
                "EmitByShooterTarget",  -- 由发射者向目标发射 🟢
                "EmitByShooterTargetPos",  -- 由发射者向目标坐标发射 🟢
                "TriggerSkillCall",  -- 触发技能调用 🟢
            },
        },
        Monster = {  -- 生物模块
            name = "生物模块",  -- 名称
            methods = {
                "RandomActorID",  -- 随机角色ID ✅(文档包含)
                "SetTameTarget",  -- 设置驯服目标 ✅(文档包含)
                "GetActorID",  -- 获取角色ID ✅(文档包含)
                "ReplaceActor",  -- 替换角色 ✅(文档包含)
                "GetTamedOwnerID",  -- 获取驯服者ID ✅(文档包含)
                "SetAIActive",  -- 设置AI激活 🟢
                "ChangeAI",  -- 更换AI ✅(文档包含)
                "GetFacade",  -- 获取外观 ✅(文档包含)
                "SetPersistance",  -- 设置持久化 🟡[权限不足]
                "GetActorName",  -- 获取角色名称 ✅(文档包含)
                "GetMonsterDefLevelExp",  -- 获取生物定义等级经验 ✅(文档包含)
                "SetMonsterDefLevelExp",  -- 设置生物定义等级经验 ✅(文档包含)
                "CanSee",  -- 能否看见 ✅(文档包含)
                "GetDropItemInfo",  -- 获取掉落物信息 ✅(文档包含)
                "GetTags",  -- 获取标签 ✅(文档包含)
                "GetMonsterDefName",  -- 获取生物定义名称 ✅(文档包含)
            },
        },
        Player = {  -- 玩家模块
            name = "玩家模块",  -- 名称
            methods = {
                "StandReportEvent",  -- 上报事件 ✅(文档包含)
                "GetPlayerCostStatic",  -- 获取玩家消费统计 ✅(文档包含)
                "ReviveToPos",  -- 复活到坐标 ✅(文档包含)
                "GetAimPos",  -- 获取瞄准位置 ✅(文档包含)
                "OpenShopTryOnView",  -- 打开商店试穿界面 🟡[权限不足]
                "OpenShopSkinBuyDialog",  -- 打开商店皮肤购买弹窗 🟡[权限不足]
                "OpenUIView",  -- 打开UI界面 ✅(文档包含)
                "GetFirstInviter",  -- 获取首个邀请人 ✅(文档包含)
                "OpenBoxByPos",  -- 在坐标处打开箱子 ✅(文档包含)
                "GetCurToolID",  -- 获取当前工具ID ✅(文档包含)
                "GetHostUin",  -- 获取主机QQ号 ✅(文档包含)
                "SetCameraPosTransformTo",  -- 设置相机位置变换到 ✅(文档包含)
                "SetCameraRotTransformTo",  -- 设置相机旋转变换到 ✅(文档包含)
                "CheckActionAttrState",  -- 检查动作属性状态 🟢
                "IsEquipByResID",  -- 是否装备该资源ID ✅(文档包含)
                "IsHandWeaponSpellEnhancementActive",  -- 手持武器法术强化是否激活 ✅(文档包含)
                "SetCameraRotTransformBy",  -- 设置相机旋转变换(相对) ✅(文档包含)
                "SetCameraFovTransformBy",  -- 设置相机视野变换(相对) ✅(文档包含)
                "HasFriend",  -- 是否有好友 ✅(文档包含)
                "GetMiniVipLevel",  -- 获取迷你VIP等级 ✅(文档包含)
                "HideUIView",  -- 隐藏UI界面 ✅(文档包含)
                "SetCameraPosTransformBy",  -- 设置相机位置变换(相对) ✅(文档包含)
                "SetCameraFovTransformTo",  -- 设置相机视野变换到 ✅(文档包含)
                "MountActor",  -- 骑乘角色 🟢
                "GetNickname",  -- 获取昵称 ✅(文档包含)
                "NotifyGameInfo2Self",  -- 通知游戏信息给自己 ✅(文档包含)
                "ShakeCamera",  -- 震动相机 ✅(文档包含)
                "StopShakeCamera",  -- 停止相机震动 ✅(文档包含)
                "SetCameraAttrState",  -- 设置相机属性状态 ✅(文档包含)
                "SetCameraRotMode",  -- 设置相机旋转模式 ✅(文档包含)
                "ResetCameraAttr",  -- 重置相机属性 ✅(文档包含)
                "ItemSkillCDEnter",  -- 道具技能冷却开始 ✅(文档包含)
                "ItemSkillCDDone",  -- 道具技能冷却结束 ✅(文档包含)
                "SetGameResults",  -- 设置游戏结果 ✅(文档包含)
                "SetGameWin",  -- 设置游戏胜利 ✅(文档包含)
                "SetRevivePoint",  -- 设置复活点 ✅(文档包含)
                "UseItem",  -- 使用道具 🟢
                "ForceOpenBoxUI",  -- 强制打开箱子界面 ✅(文档包含)
                "SetShotcutIndex",  -- 设置快捷栏索引 ✅(文档包含)
                "SetCameraMountPos",  -- 设置相机挂载位置 ✅(文档包含)
                "ChangeViewMode",  -- 切换视角模式 ✅(文档包含)
                "OpenShopGiveGiftView",  -- 打开商店送礼界面 🟡[权限不足]
                "SetMobileVibrate",  -- 设置手机震动 ✅(文档包含)
                "PauseMusic",  -- 暂停音乐 ✅(文档包含)
                "GetCurShotcut",  -- 获取当前快捷栏 🟢
                "GetShotcutIndex",  -- 获取快捷栏索引 ✅(文档包含)
                "SetSkillCD",  -- 设置技能冷却 ✅(文档包含)
                "SetItemAttAction",  -- 设置道具附加动作 ✅(文档包含)
                "RotateCamera",  -- 旋转相机 ✅(文档包含)
                "SetCameraMountObj",  -- 设置相机挂载对象 ✅(文档包含)
                "PlayMusic",  -- 播放音乐 ✅(文档包含)
                "StopMusic",  -- 停止音乐 ✅(文档包含)
                "SendFriendApply",  -- 发送好友申请 ✅(文档包含)
                "PlayAdvertising",  -- 播放广告 ✅(文档包含)
                "OpenInnerView",  -- 打开内部界面 ✅(文档包含)
                "HasHandheldGun",  -- 是否手持枪械 🟡[权限不足]
                "SetCrawl",  -- 设置匍匐 🟡[权限不足]
                "GunGetMagazine",  -- 获取枪械弹匣 🟡[权限不足]
                "ChangeViewModeForMod",  -- 为模组切换视角模式 🟡[权限不足]
                "SetGunActionState",  -- 设置枪械动作状态 ✅(文档包含)
                "GetAimDir",  -- 获取瞄准方向 ✅(文档包含)
                "GetViewMode",  -- 获取视角模式 ✅(文档包含)
                "GetRentCloudServerOwner",  -- 获取租用云服务器所有者 ✅(文档包含)
                "OpenDevGoodsBuyDialog",  -- 打开开发者道具购买弹窗 ✅(文档包含)
                "OpenDevGoodsBuyDetailedDialog",  -- 打开开发者道具购买详情弹窗 ✅(文档包含)
                "OpenDevStore",  -- 打开开发者商店 ✅(文档包含)
                "OpenDevStoreTab",  -- 打开开发者商店标签页 ✅(文档包含)
                "OpenDevGoodsPage",  -- 打开开发者道具页面 ✅(文档包含)
                "GetRevivePoint",  -- 获取复活点 ✅(文档包含)
                "GetRayOriginPos",  -- 获取射线起点位置 ✅(文档包含)
                "RotateCameraToActor",  -- 旋转相机朝向角色 ✅(文档包含)
                "ClearMotion",  -- 清除动作 ✅(文档包含)
                "GetScreenSpacePos",  -- 获取屏幕空间坐标 ✅(文档包含)
                "GetScreenSpacePosV2",  -- 获取屏幕空间坐标V2 ✅(文档包含)
                "ChangPlayerMoveType",  -- 改变玩家移动类型 ✅(文档包含)
                "AddMagazine",  -- 添加弹匣 🟡[权限不足]
                "GetClientInfo",  -- 获取客户端信息 ✅(文档包含)
                "GetVisibleRange",  -- 获取可见范围 🟡[权限不足]
                "SetVisibleRange",  -- 设置可见范围 🟡[权限不足]
                "SetCameraShake",  -- 设置相机震动 🟡[权限不足]
                "RemovePlayer",  -- 移除玩家 ✅(文档包含)
                "OpenActView",  -- 打开活动界面 🟡[权限不足]
                "GetSkinlist",  -- 获取皮肤列表 🟡[权限不足]
                "GetSkinSeatInfos",  -- 获取皮肤座位信息 🟡[权限不足]
                "GetFriendList",  -- 获取好友列表 ✅(文档包含)
                "GetMiniCurrency",  -- 获取迷你币 ✅(文档包含)
                "OpenFriendChatPage",  -- 打开好友聊天页面 🟡[权限不足]
                "SetSettingEnable",  -- 设置设置项启用 ✅(文档包含)
                "SetSettingAbility",  -- 设置设置项能力 ✅(文档包含)
                "OpenMiniShopPage",  -- 打开迷你商店页面 🟡[权限不足]
                "OpenMiniShopItemPage",  -- 打开迷你商店道具页面 🟡[权限不足]
                "OpenMiniShopWarehousePage",  -- 打开迷你商店仓库页面 🟡[权限不足]
                "GetHorseRealID",  -- 获取坐骑真实ID 🟡[权限不足]
                "GetPersonInfo",  -- 获取个人信息 🟡[权限不足]
                "RotateMainModel",  -- 旋转主模型 ✅(文档包含)
                "GetBlockAtlasInfo",  -- 获取方块图集信息 🟡[权限不足]
            },
        },
        Buff = {  -- 状态效果模块
            name = "状态模块",  -- 名称
            methods = {
                "GetBuffLeftTime",  -- 获取状态效果剩余时间 ✅(文档包含)
                "HasBuff",  -- 是否拥有状态效果 ✅(文档包含)
                "GetBuffDefName",  -- 获取状态效果定义名称 ✅(文档包含)
                "GetBuffDefDesc",  -- 获取状态效果定义描述 ✅(文档包含)
                "ReplaceBuff",  -- 替换状态效果 ✅(文档包含)
                "RemoveBuff",  -- 移除状态效果 ✅(文档包含)
                "AddBuff",  -- 添加状态效果 ✅(文档包含)
                "ClearAllGoodBuff",  -- 清除所有增益状态 ✅(文档包含)
                "ClearAllBadBuff",  -- 清除所有减益状态 ✅(文档包含)
                "ClearAllBuff",  -- 清除所有状态 ✅(文档包含)
                "GetBuffList",  -- 获取状态效果列表 ✅(文档包含)
                "GetBuffNumByBuffid",  -- 按状态ID获取状态数量 ✅(文档包含)
            },
        },
        Team = {  -- 队伍模块
            name = "队伍模块",  -- 名称
            methods = {},
        },
        World = {  -- 世界模块
            name = "世界模块",  -- 名称
            methods = {
                "CalcDirectionByYawAngle",  -- 通过偏航角计算方向 ✅(文档包含)
                "CalcDirectionByCoord",  -- 通过坐标计算方向 ✅(文档包含)
                "GetHours",  -- 获取小时 ✅(文档包含)
                "RandomParticleEffectID",  -- 随机粒子特效ID ✅(文档包含)
                "RandomSoundID",  -- 随机音效ID ✅(文档包含)
                "SetHours",  -- 设置小时 ✅(文档包含)
                "SetGravity",  -- 设置重力 ✅(文档包含)
                "SetTimeVanishingSpeed",  -- 设置时间流逝速度 ✅(文档包含)
                "SetSkyBoxTemplate",  -- 设置天空盒模板 ✅(文档包含)
                "SetSkyBoxMaps",  -- 设置天空盒贴图 ✅(文档包含)
                "SetSkyBoxFilterAnim",  -- 设置天空盒滤镜动画 ✅(文档包含)
                "SetSkyBoxAttr",  -- 设置天空盒属性 ✅(文档包含)
                "SetSkyBoxAttrWithNoTime",  -- 设置天空盒属性(无时间) ✅(文档包含)
                "SetSkyBoxSwitch",  -- 设置天空盒开关 ✅(文档包含)
                "SetSkyBoxFilter",  -- 设置天空盒滤镜 ✅(文档包含)
                "GetDateFromTime",  -- 从时间获取日期 ✅(文档包含)
                "GetDirRayDetection",  -- 获取方向射线检测 ✅(文档包含)
                "GetPlayerTotal",  -- 获取玩家总数 ✅(文档包含)
                "GetTimeFromDateString",  -- 从日期字符串获取时间 🟢
                "GetSpawnPoint",  -- 获取出生点 ✅(文档包含)
                "GetRayLength",  -- 获取射线长度 ✅(文档包含)
                "GetDateStringFromTime",  -- 从时间获取日期字符串 🟢
                "SetSkyBoxColor",  -- 设置天空盒颜色 ✅(文档包含)
                "CalcDirectionByAngle",  -- 通过角度计算方向 ✅(文档包含)
                "GetRayBlock",  -- 获取射线方块 ✅(文档包含)
                "CalcDirectionByYawDirection",  -- 通过偏航方向计算方向 ✅(文档包含)
                "GetGravity",  -- 获取重力 ✅(文档包含)
                "RandomWeatherID",  -- 随机天气ID ✅(文档包含)
                "CalcDistance",  -- 计算距离 ✅(文档包含)
                "StopSoundEffectOnPos",  -- 停止坐标处音效 ✅(文档包含)
                "SpawnProjectile",  -- 生成投射物 ✅(文档包含)
                "GetLocalDate",  -- 获取本地日期 ✅(文档包含)
                "SpawnCreature",  -- 生成生物 ✅(文档包含)
                "PlayParticleEffect",  -- 播放粒子特效 🟢
                "StopParticleEffectOnPos",  -- 停止坐标处粒子特效 🟢
                "StopParticleOnPos",  -- 停止坐标处粒子 ✅(文档包含)
                "SetParticleEffectScale",  -- 设置粒子特效缩放 🟢
                "SetParticleTransform",  -- 设置粒子变换 ✅(文档包含)
                "PlaySoundEffectOnPos",  -- 在坐标处播放音效 ✅(文档包含)
                "GetGroupWeather",  -- 获取群组天气 ✅(文档包含)
                "GetLocalDateString",  -- 获取本地日期字符串 ✅(文档包含)
                "GetServerDate",  -- 获取服务器日期 ✅(文档包含)
                "SetSkyBoxMapsAnim",  -- 设置天空盒贴图动画 ✅(文档包含)
                "SetSkyBoxColorAnim",  -- 设置天空盒颜色动画 ✅(文档包含)
                "GetBiomeGroup",  -- 获取生物群系组 ✅(文档包含)
                "GetServerDateString",  -- 获取服务器日期字符串 🟢
                "SetSpawnPoint",  -- 设置出生点 ✅(文档包含)
                "SetGroupWeather",  -- 设置群组天气 ✅(文档包含)
                "DespawnActor",  -- 移除角色 ✅(文档包含)
                "PauseSoundEffectOnPos",  -- 暂停坐标处音效 ✅(文档包含)
                "GetDay",  -- 获取白天 ✅(文档包含)
                "PlayParticle",  -- 播放粒子 ✅(文档包含)
                "PixelMapAddMarker",  -- 像素地图添加标记 ✅(文档包含)
                "PixelMapRefreshMarker",  -- 像素地图刷新标记 ✅(文档包含)
                "PixelMapDelMarker",  -- 像素地图删除标记 ✅(文档包含)
                "PixelMapAddTexture",  -- 像素地图添加贴图 ✅(文档包含)
                "PixelMapRefreshTexture",  -- 像素地图刷新贴图 ✅(文档包含)
                "PixelMapDelTexture",  -- 像素地图删除贴图 ✅(文档包含)
                "SpawnProjectileByDir",  -- 按方向生成投射物 ✅(文档包含)
                "CanMobSpawnOnPosXZ",  -- 生物能否在该坐标生成 ✅(文档包含)
                "GetCurMapId",  -- 获取当前地图ID 🟢
                "GetAllPlayers",  -- 获取所有玩家 ✅(文档包含)
                "CalcDirectionByPos2Pos",  -- 计算两点间方向 ✅(文档包含)
                "SetWorldCreateMobRule",  -- 设置世界生成生物规则 ✅(文档包含)
                "GetWorldCreateMobRule",  -- 获取世界生成生物规则 ✅(文档包含)
                "SetMobSpawnDensity",  -- 设置生物生成密度 ✅(文档包含)
                "SetPlantGrowRate",  -- 设置植物生长速度 ✅(文档包含)
                "SetInnerViewEnable",  -- 设置内部界面启用 ✅(文档包含)
                "SetMidJoin",  -- 设置中途加入 ✅(文档包含)
                "GetGameMode",  -- 获取游戏模式 ✅(文档包含)
                "FindCanSpawnMobPosList",  -- 查找可生成生物坐标列表 ✅(文档包含)
                "FindNearestPlayerByPos",  -- 查找最近玩家 ✅(文档包含)
                "IsDaytime",  -- 是否为白天 ✅(文档包含)
                "GetBiomeType",  -- 获取生物群系类型 ✅(文档包含)
                "FindEcosystem",  -- 查找生态系统 ✅(文档包含)
                "GetLightByPos",  -- 获取坐标光照 ✅(文档包含)
                "FindNearActorListByObjType",  -- 按对象类型查找附近角色列表 🟡[权限不足]
                "GetHostWorldId",  -- 获取主机世界ID ✅(文档包含)
                "SetLightByPos",  -- 按坐标设置光照 ✅(文档包含)
                "AddGameTimes",  -- 增加游戏次数 🟡[权限不足]
                "AddGravity",  -- 增加重力 ✅(文档包含)
                "IsChunkLoaded",  -- 区块是否已加载 ✅(文档包含)
                "SetChunkRectAlwaysLoaded",  -- 设置区块矩形常驻加载 🟡[权限不足]
                "EmitByPosition",  -- 按位置发射 🟢
                "EmitByPositionTargetPos",  -- 按位置发射到目标坐标 🟢
                "EmitByPositionTarget",  -- 按位置发射到目标 🟢
            },
        },
        Planet = {  -- 星球模块
            name = "Planet",  -- 模块名称：星球模块
            methods = {
                "CreatePlanet",  -- 创建星球 🟢
                "PreloadPlanet",  -- 预加载星球 🟢
                "TeleportToPlanet",  -- 传送到星球 🟢
                "ReleasePreloadedPlanet",  -- 释放预加载星球 🟢
            },
        },
        WorldContainer = {  -- 容器模块
            name = "容器模块",  -- 名称
            methods = {
                "ClearContainer",  -- 清空容器 ✅(文档包含)
                "AddItemToContainer",  -- 添加道具到容器 ✅(文档包含)
                "SetStorageItem",  -- 设置储物道具 ✅(文档包含)
                "RemoveContainerItemByID",  -- 按ID移除容器道具 ✅(文档包含)
                "CheckStorage",  -- 检查储物 ✅(文档包含)
                "ClearStorageBox",  -- 清空储物箱 ✅(文档包含)
                "CheckStorageEmptyGrid",  -- 检查储物空格子 ✅(文档包含)
                "GetStorageItem",  -- 获取储物道具 ✅(文档包含)
                "AddStorageItem",  -- 添加储物道具 ✅(文档包含)
                "RemoveStorageItemByID",  -- 按ID移除储物道具 ✅(文档包含)
                "RemoveStorageItemByIndex",  -- 按索引移除储物道具 ✅(文档包含)
                "AddWorldStorageItems",  -- 添加世界储物道具 ✅(文档包含)
                "GetStorageItemInstanceId",  -- 获取储物道具实例ID ✅(文档包含)
                "GetAllStorageItemInstanceIds",  -- 获取所有储物道具实例ID ✅(文档包含)
                "SwapContainerItem",  -- 交换容器道具 ✅(文档包含)
                "GetGridAttr",  -- 获取格子属性 ✅(文档包含)
            },
        },
        Backpack = {  -- 背包模块
            name = "背包模块",  -- 名称
            methods = {
                "GetGridItemName",  -- 获取格子道具名称 ✅(文档包含)
                "CalcSpaceNumForItem",  -- 计算道具所需空间 ✅(文档包含)
                "ClearPack",  -- 清空背包 ✅(文档包含)
                "GetGridItemID",  -- 获取格子道具ID ✅(文档包含)
                "SwapGridItem",  -- 交换格子道具 ✅(文档包含)
                "CreateItem",  -- 创建道具 ✅(文档包含)
                "DiscardItemByID",  -- 按ID丢弃道具 ✅(文档包含)
                "DiscardItem",  -- 丢弃道具 ✅(文档包含)
                "AddItem",  -- 添加道具 ✅(文档包含)
                "SetGridItem",  -- 设置格子道具 ✅(文档包含)
                "RemoveGridItem",  -- 移除格子道具 ✅(文档包含)
                "EnoughSpaceForItem",  -- 是否有足够空间放道具 ✅(文档包含)
                "ActEquipUpByResID",  -- 按资源ID穿上装备 ✅(文档包含)
                "ActEquipOffByEquipID",  -- 按装备ID卸下装备 ✅(文档包含)
                "ActDestructEquip",  -- 销毁装备 ✅(文档包含)
                "GetItemNumByBackpackBar",  -- 获取背包栏道具数量 ✅(文档包含)
                "StopShortCutIxEffect",  -- 停止快捷栏索引特效 ✅(文档包含)
                "RemoveGridItemByItemID",  -- 按道具ID移除格子道具 ✅(文档包含)
                "HasItemByBackpackBar",  -- 背包栏是否有道具 ✅(文档包含)
                "PlayShortCutItemEffect",  -- 播放快捷栏道具特效 🟢
                "PlayShortCutItemParticle",  -- 播放快捷栏道具粒子 ✅(文档包含)
                "PlayShortCutIxEffect",  -- 播放快捷栏索引特效 🟢
                "PlayShortCutIxParticle",  -- 播放快捷栏索引粒子 ✅(文档包含)
                "MoveGridItem",  -- 移动格子道具 ✅(文档包含)
                "StopShortCutItemEffect",  -- 停止快捷栏道具特效 ✅(文档包含)
                "GetItemNum",  -- 获取道具数量 ✅(文档包含)
                "ClearAllPack",  -- 清空所有背包 ✅(文档包含)
                "GetGridGunInfo",  -- 获取格子枪械信息 🟡[权限不足]
                "GetAllBackPackInstanceIds",  -- 获取所有背包实例ID ✅(文档包含)
                "CreateItemInstInBackpack",  -- 在背包创建道具实例 ✅(文档包含)
                "CreateGunInBackpack",  -- 在背包创建枪械 ✅(文档包含)
                "GetInstIdByGridIndex",  -- 按格子索引获取实例ID ✅(文档包含)
                "GetGunInstIdInBackpack",  -- 获取背包中枪械实例ID ✅(文档包含)
                "GetGridInfos",  -- 获取格子信息 ✅(文档包含)
                "LoadGridInfos",  -- 加载格子信息 ✅(文档包含)
                "DecodeGridInfo",  -- 解码格子信息 ✅(文档包含)
                "EncodeTableGridInfo",  -- 编码表格子信息 ✅(文档包含)
                "SetGridsLock",  -- 设置格子锁定 ✅(文档包含)
                "ClearGrids",  -- 清空格子 ✅(文档包含)
                "SetBackPackNum",  -- 设置背包数量 ✅(文档包含)
                "IsLock",  -- 是否锁定 ✅(文档包含)
                "GetGridAttr",  -- 获取格子属性 ✅(文档包含)
                "SetGridAttr",  -- 设置格子属性 ✅(文档包含)
            },
        },
        GameRule = {},  -- 游戏规则模块
        GameEffect = {},  -- 游戏特效模块
        Mod = {  -- 资源模块
            name = "资源模块",  -- 名称
            methods = {
                "GetCfgIdByAssetId",  -- 通过资源ID获取配置ID ✅(文档包含)
            },
        },
        Task = {},  -- 任务模块
        ObjectLib = {},  -- 对象库模块
        Biome = {},  -- 生物群系模块
        CloudSever = {  -- 云服务器模块
            name = "云服模块",  -- 名称
            methods = {
                "SetDataListValue",  -- 设置数据列表值 🟢
                "SetDataListBykey",  -- 按键设置数据列表 ✅(文档包含)
                "GetDataListByKey",  -- 按键获取数据列表 ✅(文档包含)
                "TransmitToCategoryRoom",  -- 传送到分类房间 🟡[权限不足]
                "TransmitToCurMapCategoryRoom",  -- 传送到当前地图分类房间 🟡[权限不足]
                "GetRoomCategory",  -- 获取房间分类 🟡[权限不足]
                "SetRoomCategory",  -- 设置房间分类 🟡[权限不足]
                "GetRoomID",  -- 获取房间ID ✅(文档包含)
            },
        },
        Game = {  -- 游戏模块
            methods = {},
        },
        OfficeUtils = {  -- 工具模块
            name = "工具模块",  -- 名称
            methods = {
                "ReportActivateDataForUin",  -- 上报玩家激活数据 🟡[权限不足]
                "GetShopItemInfo",  -- 获取商店道具信息 🟢
                "GetActivateProgress",  -- 获取激活进度 🟡[权限不足]
                "GetActivateReward",  -- 获取激活奖励 🟡[权限不足]
                "SendClientReportEvent",  -- 发送客户端上报事件 🟡[权限不足]
                "ReportOfficeActivateData",  -- 上报活动数据 🟡[权限不足]
            },
        },
        Timeline = {  -- 剧情动画模块
            name = "剧情动画模块",  -- 名称
            methods = {
                "PlayForAll",  -- 为所有人播放 ✅(文档包含)
                "PlayForPlayer",  -- 为玩家播放 ✅(文档包含)
                "Pause",  -- 暂停 ✅(文档包含)
                "Resume",  -- 恢复 ✅(文档包含)
                "SkipForPlayer",  -- 为玩家跳过 ✅(文档包含)
                "GetPlayerState",  -- 获取玩家状态 ✅(文档包含)
                "IsAllFinished",  -- 是否全部完成 ✅(文档包含)
            },
        },
    },
}

