.class Lcom/sec/android/provider/logsprovider/LogsProvider$DatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "LogsProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/provider/logsprovider/LogsProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DatabaseHelper"
.end annotation


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 130
    const-string v0, "logs.db"

    const/4 v1, 0x0

    const/16 v2, 0x39

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 131
    return-void
.end method

.method private createKorDurationTrigger(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 1376
    const-string v0, "CREATE TRIGGER duration_update INSERT ON logs BEGIN UPDATE duration_table SET last_voice = new.duration WHERE new.logtype = 100;UPDATE duration_table SET last_video = new.duration WHERE new.logtype = 500 AND new.service_type != 30;UPDATE duration_table SET last_video = new.duration WHERE new.logtype = 900;UPDATE duration_table SET last_voip = new.duration WHERE new.logtype = 800;UPDATE duration_table SET last_chaton_voice = new.duration WHERE new.logtype = 120;UPDATE duration_table SET last_chaton_video = new.duration WHERE new.logtype = 510;UPDATE duration_table SET last_contents_shared = new.duration WHERE new.logtype = 1100;UPDATE duration_table SET last_volte = new.duration WHERE new.logtype = 1000 AND new.service_type != 30;UPDATE duration_table SET dial_voice = dial_voice + new.duration WHERE new.logtype = 100 AND new.type = 2;UPDATE duration_table SET dial_video = dial_video + new.duration WHERE new.logtype = 500 AND new.type = 2 AND new.service_type != 30;UPDATE duration_table SET dial_voip = dial_voip + new.duration WHERE new.logtype = 800 AND new.type = 2;UPDATE duration_table SET dial_voip = dial_voip + new.duration WHERE new.logtype = 900 AND new.type = 2;UPDATE duration_table SET dial_chaton_voice = dial_chaton_voice + new.duration WHERE new.logtype = 120 AND new.type = 2;UPDATE duration_table SET dial_chaton_video = dial_chaton_video + new.duration WHERE new.logtype = 510 AND new.type = 2;UPDATE duration_table SET dial_contents_shared = dial_contents_shared + new.duration WHERE new.logtype = 1100 AND new.type = 2;UPDATE duration_table SET dial_volte = dial_volte + new.duration WHERE new.logtype = 1000 AND new.type = 2 AND new.service_type != 30;UPDATE duration_table SET rece_voice = rece_voice + new.duration WHERE new.logtype = 100 AND new.type = 1;UPDATE duration_table SET rece_video = rece_video + new.duration WHERE new.logtype = 500 AND new.type = 1 AND new.service_type != 30;UPDATE duration_table SET rece_video = rece_video + new.duration WHERE new.logtype = 900 AND new.type = 1;UPDATE duration_table SET rece_voip = rece_voip + new.duration WHERE new.logtype = 800 AND new.type = 1;UPDATE duration_table SET rece_chaton_voice = rece_chaton_voice + new.duration WHERE new.logtype = 120 AND new.type = 1;UPDATE duration_table SET rece_chaton_video = rece_chaton_video + new.duration WHERE new.logtype = 510 AND new.type = 1 AND new.service_type != 30;UPDATE duration_table SET rece_contents_shared = rece_contents_shared + new.duration WHERE new.logtype = 1100 AND new.type = 1;UPDATE duration_table SET rece_volte = rece_volte + new.duration WHERE new.logtype = 1000 AND new.type = 1 AND new.service_type != 30;UPDATE duration_table SET all_voice = all_voice + new.duration WHERE new.logtype = 100;UPDATE duration_table SET all_video = all_video + new.duration WHERE new.logtype = 500 AND new.service_type != 30;UPDATE duration_table SET all_video = all_video + new.duration WHERE new.logtype = 900;UPDATE duration_table SET all_voip = all_voip + new.duration WHERE new.logtype = 800;UPDATE duration_table SET all_chaton_voice = all_chaton_voice + new.duration WHERE new.logtype = 120;UPDATE duration_table SET all_chaton_video = all_chaton_video + new.duration WHERE new.logtype = 510;UPDATE duration_table SET all_contents_shared = all_contents_shared + new.duration WHERE new.logtype = 1100;UPDATE duration_table SET all_volte = all_volte + new.duration WHERE new.logtype = 1000 AND new.service_type != 30; END"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1458
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 3
    .parameter "db"

    .prologue
    const/4 v2, 0x1

    .line 135
    const-string v0, "ro.product.name"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "m0grandectc"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ro.product.name"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ironzn"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ro.product.name"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ironzm"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ro.product.name"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "t03gduoszc"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ro.product.name"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "t03gduoszn"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ro.product.name"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "t03gctc"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ro.product.name"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "m0ctcduos"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ro.product.name"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "kyleplus3gctc"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ro.product.name"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "aruba3gduosctc"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ro.product.name"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "infinite3gduosctc"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ro.product.name"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ja3gchnduoszn"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ro.product.name"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "crater3gctc"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ro.product.name"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ja3gduosctc"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ro.product.name"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "melius3gduosctc"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ro.product.name"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "montblanc3gctc"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ro.product.name"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "delos3gviactc"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ro.product.name"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "h3gduosctc"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ro.product.name"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "h3gduoszn"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ro.product.name"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ms013gctc"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 154
    :cond_0
    invoke-static {v2}, Lcom/sec/android/provider/logsprovider/LogsProvider;->access$002(Z)Z

    .line 155
    :cond_1
    const-string v0, "CREATE TABLE logs (_id INTEGER PRIMARY KEY AUTOINCREMENT,number TEXT,sim_id INTEGER,address TEXT,date INTEGER,duration INTEGER,type INTEGER,new INTEGER,name TEXT,numbertype INTEGER,numberlabel TEXT,voicemail_uri TEXT,is_read INTEGER,countryiso TEXT,geocoded_location TEXT,lookup_uri TEXT,matched_number TEXT,normalized_number TEXT,photo_id INTEGER NOT NULL DEFAULT 0,formatted_number TEXT,messageid TEXT,logtype INTEGER NOT NULL,frequent INTEGER,contactid INTEGER NOT NULL,raw_contact_id INTEGER,m_subject TEXT,m_content TEXT,sns_tid TEXT,sns_pkey TEXT,account_name TEXT,account_id TEXT,sns_receiver_count TEXT,sp_type TEXT,e164_number TEXT,cnap_name TEXT,cdnip_number TEXT, service_type INTEGER, country_code TEXT,cityid TEXT,fname TEXT,lname TEXT,bname TEXT,simnum INTEGER,sdn_alpha_id TEXT,real_phone_number TEXT,call_out_duration INTEGER,reject_flag INTEGER,pinyin_name TEXT,_data TEXT,has_content INTEGER,mime_type TEXT,source_data TEXT,source_package TEXT,state INTEGER,remind_me_later_set INTEGER,dormant_set INTEGER,vvm_id INTEGER);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 215
    const-string v0, "CREATE TABLE sns_msg_receiver_map (_id INTEGER PRIMARY KEY AUTOINCREMENT,message_id INTEGER,receiver_id TEXT,receiver_name TEXT);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 219
    invoke-static {}, Lcom/sec/android/provider/logsprovider/LogsProvider;->access$000()Z

    move-result v0

    if-ne v0, v2, :cond_2

    .line 220
    const-string v0, "CREATE TABLE duration_table (_id INTEGER PRIMARY KEY AUTOINCREMENT,last_voice INTEGER,last_video INTEGER,last_voip INTEGER,last_chaton_voice INTEGER,last_chaton_video INTEGER,dial_voice INTEGER,dial_video INTEGER,dial_voip INTEGER,dial_chaton_voice INTEGER,dial_chaton_video INTEGER,rece_voice INTEGER,rece_video INTEGER,rece_voip INTEGER,rece_chaton_voice INTEGER,rece_chaton_video INTEGER,all_voice INTEGER,all_video INTEGER,all_voip INTEGER,all_chaton_voice INTEGER,all_chaton_video INTEGER,last_voice_sim2 INTEGER,last_video_sim2 INTEGER,dial_voice_sim2 INTEGER,dial_video_sim2 INTEGER,rece_voice_sim2 INTEGER,rece_video_sim2 INTEGER,all_voice_sim2 INTEGER,all_video_sim2 INTEGER,reset_date INTEGER);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 255
    const-string v0, "INSERT INTO duration_table VALUES (1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 700
    :goto_0
    invoke-static {}, Lcom/sec/android/provider/logsprovider/LogsProvider;->access$000()Z

    move-result v0

    if-ne v0, v2, :cond_3

    .line 703
    const-string v0, "CREATE TRIGGER duration_update INSERT ON logs BEGIN UPDATE duration_table SET last_voice = new.duration WHERE new.logtype = 100 AND new.simnum = 1;UPDATE duration_table SET last_video = new.duration WHERE new.logtype = 500 AND new.simnum = 1;UPDATE duration_table SET last_video = new.duration WHERE new.logtype = 900;UPDATE duration_table SET last_voip = new.duration WHERE new.logtype = 800;UPDATE duration_table SET last_chaton_voice = new.duration WHERE new.logtype = 120;UPDATE duration_table SET last_chaton_video = new.duration WHERE new.logtype = 510;UPDATE duration_table SET dial_voice = dial_voice + new.duration WHERE new.logtype = 100 AND new.type = 2 AND new.simnum = 1;UPDATE duration_table SET dial_video = dial_video + new.duration WHERE new.logtype = 500 AND new.type = 2 AND new.simnum = 1;UPDATE duration_table SET dial_voip = dial_voip + new.duration WHERE new.logtype = 800 AND new.type = 2;UPDATE duration_table SET dial_voip = dial_voip + new.duration WHERE new.logtype = 900 AND new.type = 2;UPDATE duration_table SET dial_chaton_voice = dial_chaton_voice + new.duration WHERE new.logtype = 120 AND new.type = 2;UPDATE duration_table SET dial_chaton_video = dial_chaton_video + new.duration WHERE new.logtype = 510 AND new.type = 2;UPDATE duration_table SET rece_voice = rece_voice + new.duration WHERE new.logtype = 100 AND new.type = 1 AND new.simnum = 1;UPDATE duration_table SET rece_video = rece_video + new.duration WHERE new.logtype = 500 AND new.type = 1 AND new.simnum = 1;UPDATE duration_table SET rece_video = rece_video + new.duration WHERE new.logtype = 900 AND new.type = 1;UPDATE duration_table SET rece_voip = rece_voip + new.duration WHERE new.logtype = 800 AND new.type = 1;UPDATE duration_table SET rece_chaton_voice = rece_chaton_voice + new.duration WHERE new.logtype = 120 AND new.type = 1;UPDATE duration_table SET rece_chaton_video = rece_chaton_video + new.duration WHERE new.logtype = 510 AND new.type = 1;UPDATE duration_table SET all_voice = all_voice + new.duration WHERE new.logtype = 100 AND new.simnum = 1;UPDATE duration_table SET all_video = all_video + new.duration WHERE new.logtype = 500 AND new.simnum = 1;UPDATE duration_table SET all_video = all_video + new.duration WHERE new.logtype = 900;UPDATE duration_table SET all_voip = all_voip + new.duration WHERE new.logtype = 800;UPDATE duration_table SET all_chaton_voice = all_chaton_voice + new.duration WHERE new.logtype = 120;UPDATE duration_table SET all_chaton_video = all_chaton_video + new.duration WHERE new.logtype = 510;UPDATE duration_table SET last_voice_sim2 = new.duration WHERE new.logtype =  100 AND ( new.simnum = 2 OR new.simnum = 3 );UPDATE duration_table SET last_video_sim2 = new.duration WHERE new.logtype = 500 AND ( new.simnum = 2 OR new.simnum = 3 );UPDATE duration_table SET dial_voice_sim2 = dial_voice_sim2 + new.duration WHERE new.logtype = 100 AND new.type = 2 AND ( new.simnum = 2 OR new.simnum = 3 );UPDATE duration_table SET dial_video_sim2 = dial_video_sim2 + new.duration WHERE new.logtype = 500 AND new.type = 2 AND ( new.simnum = 2 OR new.simnum = 3 );UPDATE duration_table SET rece_voice_sim2 = rece_voice_sim2 + new.duration WHERE new.logtype = 100 AND new.type = 1 AND ( new.simnum = 2 OR new.simnum = 3 );UPDATE duration_table SET rece_video_sim2 = rece_video_sim2 + new.duration WHERE new.logtype = 500 AND new.type = 1 AND ( new.simnum = 2 OR new.simnum = 3 );UPDATE duration_table SET all_voice_sim2 = all_voice_sim2 + new.duration WHERE new.logtype = 100 AND ( new.simnum = 2 OR new.simnum = 3 );UPDATE duration_table SET all_video_sim2 = all_video_sim2 + new.duration WHERE new.logtype = 500 AND ( new.simnum = 2 OR new.simnum = 3 ); END"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 884
    :goto_1
    const-string v0, "CREATE INDEX sns_map_id ON sns_msg_receiver_map (_id);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 887
    const-string v0, "CREATE INDEX sns_message_id ON sns_msg_receiver_map (message_id);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 890
    const-string v0, "CREATE INDEX logs_contact_id ON logs (contactid);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 892
    const-string v0, "CREATE INDEX logs_message_id ON logs (messageid);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 894
    const-string v0, "CREATE INDEX logs_log_type ON logs (logtype);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 895
    return-void

    .line 258
    :cond_2
    const-string v0, "CREATE TABLE duration_table (_id INTEGER PRIMARY KEY AUTOINCREMENT,last_voice INTEGER,last_video INTEGER,last_voip INTEGER,last_chaton_voice INTEGER,last_chaton_video INTEGER,last_contents_shared INTEGER,last_volte INTEGER,dial_voice INTEGER,dial_video INTEGER,dial_voip INTEGER,dial_chaton_voice INTEGER,dial_chaton_video INTEGER,dial_contents_shared INTEGER,dial_volte INTEGER,rece_voice INTEGER,rece_video INTEGER,rece_voip INTEGER,rece_chaton_voice INTEGER,rece_chaton_video INTEGER,rece_contents_shared INTEGER,rece_volte INTEGER,all_voice INTEGER,all_video INTEGER,all_voip INTEGER,all_chaton_voice INTEGER,all_chaton_video INTEGER,all_contents_shared INTEGER,all_volte INTEGER,reset_date INTEGER);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 290
    const-string v0, "INSERT INTO duration_table VALUES (1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ,0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    goto :goto_0

    .line 797
    :cond_3
    const-string v0, "KOR"

    const-string v1, "USA"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 798
    invoke-direct {p0, p1}, Lcom/sec/android/provider/logsprovider/LogsProvider$DatabaseHelper;->createKorDurationTrigger(Landroid/database/sqlite/SQLiteDatabase;)V

    goto :goto_1

    .line 800
    :cond_4
    const-string v0, "CREATE TRIGGER duration_update INSERT ON logs BEGIN UPDATE duration_table SET last_voice = new.duration WHERE new.logtype = 100;UPDATE duration_table SET last_video = new.duration WHERE new.logtype = 500;UPDATE duration_table SET last_video = new.duration WHERE new.logtype = 900;UPDATE duration_table SET last_voip = new.duration WHERE new.logtype = 800;UPDATE duration_table SET last_chaton_voice = new.duration WHERE new.logtype = 120;UPDATE duration_table SET last_chaton_video = new.duration WHERE new.logtype = 510;UPDATE duration_table SET last_contents_shared = new.duration WHERE new.logtype = 1100;UPDATE duration_table SET last_volte = new.duration WHERE new.logtype = 1000;UPDATE duration_table SET dial_voice = dial_voice + new.duration WHERE new.logtype = 100 AND new.type = 2;UPDATE duration_table SET dial_video = dial_video + new.duration WHERE new.logtype = 500 AND new.type = 2;UPDATE duration_table SET dial_voip = dial_voip + new.duration WHERE new.logtype = 800 AND new.type = 2;UPDATE duration_table SET dial_voip = dial_voip + new.duration WHERE new.logtype = 900 AND new.type = 2;UPDATE duration_table SET dial_chaton_voice = dial_chaton_voice + new.duration WHERE new.logtype = 120 AND new.type = 2;UPDATE duration_table SET dial_chaton_video = dial_chaton_video + new.duration WHERE new.logtype = 510 AND new.type = 2;UPDATE duration_table SET dial_contents_shared = dial_contents_shared + new.duration WHERE new.logtype = 1100 AND new.type = 2;UPDATE duration_table SET dial_volte = dial_volte + new.duration WHERE new.logtype = 1000 AND new.type = 2;UPDATE duration_table SET rece_voice = rece_voice + new.duration WHERE new.logtype = 100 AND new.type = 1;UPDATE duration_table SET rece_video = rece_video + new.duration WHERE new.logtype = 500 AND new.type = 1;UPDATE duration_table SET rece_video = rece_video + new.duration WHERE new.logtype = 900 AND new.type = 1;UPDATE duration_table SET rece_voip = rece_voip + new.duration WHERE new.logtype = 800 AND new.type = 1;UPDATE duration_table SET rece_chaton_voice = rece_chaton_voice + new.duration WHERE new.logtype = 120 AND new.type = 1;UPDATE duration_table SET rece_chaton_video = rece_chaton_video + new.duration WHERE new.logtype = 510 AND new.type = 1;UPDATE duration_table SET rece_contents_shared = rece_contents_shared + new.duration WHERE new.logtype = 1100 AND new.type = 1;UPDATE duration_table SET rece_volte = rece_volte + new.duration WHERE new.logtype = 1000 AND new.type = 1;UPDATE duration_table SET all_voice = all_voice + new.duration WHERE new.logtype = 100;UPDATE duration_table SET all_video = all_video + new.duration WHERE new.logtype = 500;UPDATE duration_table SET all_video = all_video + new.duration WHERE new.logtype = 900;UPDATE duration_table SET all_voip = all_voip + new.duration WHERE new.logtype = 800;UPDATE duration_table SET all_chaton_voice = all_chaton_voice + new.duration WHERE new.logtype = 120;UPDATE duration_table SET all_chaton_video = all_chaton_video + new.duration WHERE new.logtype = 510;UPDATE duration_table SET all_contents_shared = all_contents_shared + new.duration WHERE new.logtype = 1100;UPDATE duration_table SET all_volte = all_volte + new.duration WHERE new.logtype = 1000; END"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 6
    .parameter "db"
    .parameter "oldVersion"
    .parameter "newVersion"

    .prologue
    const/16 v5, 0x32

    .line 900
    const/4 v1, 0x0

    .line 902
    .local v1, isAddedVOLTE:Z
    if-ge p2, v5, :cond_0

    .line 905
    :try_start_0
    const-string v2, "ALTER TABLE logs ADD country_code TEXT;"

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 911
    :goto_0
    :try_start_1
    const-string v2, "ALTER TABLE logs ADD voicemail_uri INTEGER;"

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_1

    .line 917
    :goto_1
    :try_start_2
    const-string v2, "ALTER TABLE logs ADD is_read INTEGER;"

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_2
    .catch Landroid/database/SQLException; {:try_start_2 .. :try_end_2} :catch_2

    .line 923
    :goto_2
    :try_start_3
    const-string v2, "ALTER TABLE logs ADD countryiso TEXT;"

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_3
    .catch Landroid/database/SQLException; {:try_start_3 .. :try_end_3} :catch_3

    .line 929
    :goto_3
    :try_start_4
    const-string v2, "ALTER TABLE logs ADD geocoded_location TEXT;"

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_4
    .catch Landroid/database/SQLException; {:try_start_4 .. :try_end_4} :catch_4

    .line 935
    :goto_4
    :try_start_5
    const-string v2, "ALTER TABLE logs ADD lookup_uri TEXT;"

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_5
    .catch Landroid/database/SQLException; {:try_start_5 .. :try_end_5} :catch_5

    .line 941
    :goto_5
    :try_start_6
    const-string v2, "ALTER TABLE logs ADD matched_number TEXT;"

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_6
    .catch Landroid/database/SQLException; {:try_start_6 .. :try_end_6} :catch_6

    .line 947
    :goto_6
    :try_start_7
    const-string v2, "ALTER TABLE logs ADD normalized_number TEXT;"

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_7
    .catch Landroid/database/SQLException; {:try_start_7 .. :try_end_7} :catch_7

    .line 953
    :goto_7
    :try_start_8
    const-string v2, "ALTER TABLE logs ADD photo_id INTEGER;"

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_8
    .catch Landroid/database/SQLException; {:try_start_8 .. :try_end_8} :catch_8

    .line 959
    :goto_8
    :try_start_9
    const-string v2, "ALTER TABLE logs ADD formatted_number TEXT;"

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_9
    .catch Landroid/database/SQLException; {:try_start_9 .. :try_end_9} :catch_9

    .line 965
    :goto_9
    :try_start_a
    const-string v2, "ALTER TABLE logs ADD cityid TEXT;"

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_a
    .catch Landroid/database/SQLException; {:try_start_a .. :try_end_a} :catch_a

    .line 971
    :goto_a
    :try_start_b
    const-string v2, "ALTER TABLE logs ADD cnap_name TEXT;"

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_b
    .catch Landroid/database/SQLException; {:try_start_b .. :try_end_b} :catch_b

    .line 977
    :goto_b
    :try_start_c
    const-string v2, "ALTER TABLE logs ADD cdnip_number TEXT;"

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_c
    .catch Landroid/database/SQLException; {:try_start_c .. :try_end_c} :catch_c

    .line 983
    :goto_c
    :try_start_d
    const-string v2, "ALTER TABLE logs ADD service_type INTEGER;"

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_d
    .catch Landroid/database/SQLException; {:try_start_d .. :try_end_d} :catch_d

    .line 989
    :goto_d
    :try_start_e
    const-string v2, "ALTER TABLE logs ADD account_id TEXT;"

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_e
    .catch Landroid/database/SQLException; {:try_start_e .. :try_end_e} :catch_e

    .line 995
    :goto_e
    :try_start_f
    const-string v2, "ALTER TABLE logs ADD _data TEXT;"

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_f
    .catch Landroid/database/SQLException; {:try_start_f .. :try_end_f} :catch_f

    .line 1001
    :goto_f
    :try_start_10
    const-string v2, "ALTER TABLE logs ADD has_content INTEGER;"

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_10
    .catch Landroid/database/SQLException; {:try_start_10 .. :try_end_10} :catch_10

    .line 1007
    :goto_10
    :try_start_11
    const-string v2, "ALTER TABLE logs ADD mime_type TEXT;"

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_11
    .catch Landroid/database/SQLException; {:try_start_11 .. :try_end_11} :catch_11

    .line 1013
    :goto_11
    :try_start_12
    const-string v2, "ALTER TABLE logs ADD source_data INTEGER;"

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_12
    .catch Landroid/database/SQLException; {:try_start_12 .. :try_end_12} :catch_12

    .line 1019
    :goto_12
    :try_start_13
    const-string v2, "ALTER TABLE logs ADD source_package TEXT;"

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_13
    .catch Landroid/database/SQLException; {:try_start_13 .. :try_end_13} :catch_13

    .line 1025
    :goto_13
    :try_start_14
    const-string v2, "ALTER TABLE logs ADD state INTEGER;"

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_14
    .catch Landroid/database/SQLException; {:try_start_14 .. :try_end_14} :catch_14

    .line 1030
    :goto_14
    const/16 p2, 0x32

    .line 1034
    :cond_0
    if-lt p2, v5, :cond_2

    const/16 v2, 0x35

    if-gt p2, v2, :cond_2

    .line 1035
    const-string v2, ""

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Upgrading database from version "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", which will alter tables"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    .line 1039
    :try_start_15
    const-string v2, "ALTER TABLE logs ADD pinyin_name TEXT;"

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_15
    .catch Landroid/database/SQLException; {:try_start_15 .. :try_end_15} :catch_15

    .line 1045
    :goto_15
    :try_start_16
    const-string v2, "ALTER TABLE logs ADD sim_id INTEGER;"

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_16
    .catch Landroid/database/SQLException; {:try_start_16 .. :try_end_16} :catch_16

    .line 1051
    :goto_16
    :try_start_17
    const-string v2, "ALTER TABLE logs ADD fname TEXT;"

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_17
    .catch Landroid/database/SQLException; {:try_start_17 .. :try_end_17} :catch_17

    .line 1057
    :goto_17
    :try_start_18
    const-string v2, "ALTER TABLE logs ADD lname TEXT;"

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_18
    .catch Landroid/database/SQLException; {:try_start_18 .. :try_end_18} :catch_18

    .line 1063
    :goto_18
    :try_start_19
    const-string v2, "ALTER TABLE logs ADD bname TEXT;"

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_19
    .catch Landroid/database/SQLException; {:try_start_19 .. :try_end_19} :catch_19

    .line 1069
    :goto_19
    :try_start_1a
    const-string v2, "ALTER TABLE logs ADD simnum INTEGER;"

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_1a
    .catch Landroid/database/SQLException; {:try_start_1a .. :try_end_1a} :catch_1a

    .line 1075
    :goto_1a
    :try_start_1b
    const-string v2, "ALTER TABLE logs ADD sdn_alpha_id TEXT;"

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_1b
    .catch Landroid/database/SQLException; {:try_start_1b .. :try_end_1b} :catch_1b

    .line 1081
    :goto_1b
    :try_start_1c
    const-string v2, "ALTER TABLE logs ADD real_phone_number TEXT;"

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_1c
    .catch Landroid/database/SQLException; {:try_start_1c .. :try_end_1c} :catch_1c

    .line 1087
    :goto_1c
    :try_start_1d
    const-string v2, "ALTER TABLE logs ADD call_out_duration INTEGER;"

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_1d
    .catch Landroid/database/SQLException; {:try_start_1d .. :try_end_1d} :catch_1d

    .line 1093
    :goto_1d
    :try_start_1e
    const-string v2, "ALTER TABLE logs ADD reject_flag INTEGER;"

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_1e
    .catch Landroid/database/SQLException; {:try_start_1e .. :try_end_1e} :catch_1e

    .line 1099
    :goto_1e
    :try_start_1f
    const-string v2, "ALTER TABLE logs ADD e164_number TEXT;"

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_1f
    .catch Landroid/database/SQLException; {:try_start_1f .. :try_end_1f} :catch_1f

    .line 1105
    :goto_1f
    :try_start_20
    const-string v2, "ALTER TABLE logs ADD remind_me_later_set INTEGER;"

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_20
    .catch Landroid/database/SQLException; {:try_start_20 .. :try_end_20} :catch_20

    .line 1111
    :goto_20
    :try_start_21
    const-string v2, "ALTER TABLE logs ADD dormant_set INTEGER;"

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_21
    .catch Landroid/database/SQLException; {:try_start_21 .. :try_end_21} :catch_21

    .line 1116
    :goto_21
    const/16 v2, 0x34

    if-ne p2, v2, :cond_1

    const-string v2, "KOR"

    const-string v3, "USA"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1117
    const/4 v1, 0x1

    .line 1120
    :cond_1
    const/16 p2, 0x36

    .line 1124
    :cond_2
    const/16 v2, 0x36

    if-ne p2, v2, :cond_4

    .line 1125
    const-string v2, ""

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Upgrading database from version "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", which will alter tables"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    .line 1127
    if-nez v1, :cond_3

    .line 1128
    const-string v2, "ALTER TABLE duration_table ADD last_volte INTEGER;"

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1129
    const-string v2, "ALTER TABLE duration_table ADD dial_volte INTEGER;"

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1130
    const-string v2, "ALTER TABLE duration_table ADD rece_volte INTEGER;"

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1131
    const-string v2, "ALTER TABLE duration_table ADD all_volte INTEGER;"

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1140
    :cond_3
    add-int/lit8 p2, p2, 0x1

    .line 1143
    :cond_4
    const/16 v2, 0x37

    if-ne p2, v2, :cond_5

    .line 1144
    const-string v2, ""

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Upgrading database from version "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", which will alter tables"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    .line 1146
    const-string v2, "ALTER TABLE logs ADD vvm_id INTEGER;"

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1147
    add-int/lit8 p2, p2, 0x1

    .line 1150
    :cond_5
    const/16 v2, 0x38

    if-ne p2, v2, :cond_7

    .line 1151
    const-string v2, ""

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Upgrading database from version "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", which will alter tables"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    .line 1154
    const-string v2, "KOR"

    const-string v3, "USA"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1155
    const-string v2, "DROP TRIGGER IF EXISTS duration_update;"

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1156
    invoke-direct {p0, p1}, Lcom/sec/android/provider/logsprovider/LogsProvider$DatabaseHelper;->createKorDurationTrigger(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1158
    :cond_6
    add-int/lit8 p2, p2, 0x1

    .line 1160
    :cond_7
    const/16 v2, 0x39

    if-ne p2, v2, :cond_8

    .line 1161
    const-string v2, ""

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Upgrading database from version "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", which will dropMultiProfileUpdateTrigger tables"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    .line 1169
    :cond_8
    return-void

    .line 906
    :catch_0
    move-exception v0

    .line 907
    .local v0, e:Landroid/database/SQLException;
    const-string v2, ""

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Ver."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " Upgrading database alert tables not necessary, P"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 912
    .end local v0           #e:Landroid/database/SQLException;
    :catch_1
    move-exception v0

    .line 913
    .restart local v0       #e:Landroid/database/SQLException;
    const-string v2, ""

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Ver."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " Upgrading database alert tables not necessary, S"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 918
    .end local v0           #e:Landroid/database/SQLException;
    :catch_2
    move-exception v0

    .line 919
    .restart local v0       #e:Landroid/database/SQLException;
    const-string v2, ""

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Ver."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " Upgrading database alert tables not necessary, S"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 924
    .end local v0           #e:Landroid/database/SQLException;
    :catch_3
    move-exception v0

    .line 925
    .restart local v0       #e:Landroid/database/SQLException;
    const-string v2, ""

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Ver."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " Upgrading database alert tables not necessary, P"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 930
    .end local v0           #e:Landroid/database/SQLException;
    :catch_4
    move-exception v0

    .line 931
    .restart local v0       #e:Landroid/database/SQLException;
    const-string v2, ""

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Ver."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " Upgrading database alert tables not necessary, P"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 936
    .end local v0           #e:Landroid/database/SQLException;
    :catch_5
    move-exception v0

    .line 937
    .restart local v0       #e:Landroid/database/SQLException;
    const-string v2, ""

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Ver."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " Upgrading database alert tables not necessary, P"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 942
    .end local v0           #e:Landroid/database/SQLException;
    :catch_6
    move-exception v0

    .line 943
    .restart local v0       #e:Landroid/database/SQLException;
    const-string v2, ""

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Ver."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " Upgrading database alert tables not necessary, P"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    .line 948
    .end local v0           #e:Landroid/database/SQLException;
    :catch_7
    move-exception v0

    .line 949
    .restart local v0       #e:Landroid/database/SQLException;
    const-string v2, ""

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Ver."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " Upgrading database alert tables not necessary, P"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    .line 954
    .end local v0           #e:Landroid/database/SQLException;
    :catch_8
    move-exception v0

    .line 955
    .restart local v0       #e:Landroid/database/SQLException;
    const-string v2, ""

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Ver."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " Upgrading database alert tables not necessary, S"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8

    .line 960
    .end local v0           #e:Landroid/database/SQLException;
    :catch_9
    move-exception v0

    .line 961
    .restart local v0       #e:Landroid/database/SQLException;
    const-string v2, ""

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Ver."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " Upgrading database alert tables not necessary, P"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_9

    .line 966
    .end local v0           #e:Landroid/database/SQLException;
    :catch_a
    move-exception v0

    .line 967
    .restart local v0       #e:Landroid/database/SQLException;
    const-string v2, ""

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Ver."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " Upgrading database alert tables not necessary, P"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_a

    .line 972
    .end local v0           #e:Landroid/database/SQLException;
    :catch_b
    move-exception v0

    .line 973
    .restart local v0       #e:Landroid/database/SQLException;
    const-string v2, ""

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Ver."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " Upgrading database alert tables not necessary, P"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_b

    .line 978
    .end local v0           #e:Landroid/database/SQLException;
    :catch_c
    move-exception v0

    .line 979
    .restart local v0       #e:Landroid/database/SQLException;
    const-string v2, ""

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Ver."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " Upgrading database alert tables not necessary, P"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_c

    .line 984
    .end local v0           #e:Landroid/database/SQLException;
    :catch_d
    move-exception v0

    .line 985
    .restart local v0       #e:Landroid/database/SQLException;
    const-string v2, ""

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Ver."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " Upgrading database alert tables not necessary, S"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_d

    .line 990
    .end local v0           #e:Landroid/database/SQLException;
    :catch_e
    move-exception v0

    .line 991
    .restart local v0       #e:Landroid/database/SQLException;
    const-string v2, ""

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Ver."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " Upgrading database alert tables not necessary, P"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_e

    .line 996
    .end local v0           #e:Landroid/database/SQLException;
    :catch_f
    move-exception v0

    .line 997
    .restart local v0       #e:Landroid/database/SQLException;
    const-string v2, ""

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Ver."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " Upgrading database alert tables not necessary, P"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_f

    .line 1002
    .end local v0           #e:Landroid/database/SQLException;
    :catch_10
    move-exception v0

    .line 1003
    .restart local v0       #e:Landroid/database/SQLException;
    const-string v2, ""

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Ver."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " Upgrading database alert tables not necessary, S"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_10

    .line 1008
    .end local v0           #e:Landroid/database/SQLException;
    :catch_11
    move-exception v0

    .line 1009
    .restart local v0       #e:Landroid/database/SQLException;
    const-string v2, ""

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Ver."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " Upgrading database alert tables not necessary, P"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_11

    .line 1014
    .end local v0           #e:Landroid/database/SQLException;
    :catch_12
    move-exception v0

    .line 1015
    .restart local v0       #e:Landroid/database/SQLException;
    const-string v2, ""

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Ver."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " Upgrading database alert tables not necessary, S"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_12

    .line 1020
    .end local v0           #e:Landroid/database/SQLException;
    :catch_13
    move-exception v0

    .line 1021
    .restart local v0       #e:Landroid/database/SQLException;
    const-string v2, ""

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Ver."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " Upgrading database alert tables not necessary, P"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_13

    .line 1026
    .end local v0           #e:Landroid/database/SQLException;
    :catch_14
    move-exception v0

    .line 1027
    .restart local v0       #e:Landroid/database/SQLException;
    const-string v2, ""

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Ver."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " Upgrading database alert tables not necessary, S"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_14

    .line 1040
    .end local v0           #e:Landroid/database/SQLException;
    :catch_15
    move-exception v0

    .line 1041
    .restart local v0       #e:Landroid/database/SQLException;
    const-string v2, ""

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Ver."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " Upgrading database alert tables not necessary, P"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_15

    .line 1046
    .end local v0           #e:Landroid/database/SQLException;
    :catch_16
    move-exception v0

    .line 1047
    .restart local v0       #e:Landroid/database/SQLException;
    const-string v2, ""

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Ver."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " Upgrading database alert tables not necessary, S"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_16

    .line 1052
    .end local v0           #e:Landroid/database/SQLException;
    :catch_17
    move-exception v0

    .line 1053
    .restart local v0       #e:Landroid/database/SQLException;
    const-string v2, ""

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Ver."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " Upgrading database alert tables not necessary, P"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_17

    .line 1058
    .end local v0           #e:Landroid/database/SQLException;
    :catch_18
    move-exception v0

    .line 1059
    .restart local v0       #e:Landroid/database/SQLException;
    const-string v2, ""

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Ver."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " Upgrading database alert tables not necessary, P"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_18

    .line 1064
    .end local v0           #e:Landroid/database/SQLException;
    :catch_19
    move-exception v0

    .line 1065
    .restart local v0       #e:Landroid/database/SQLException;
    const-string v2, ""

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Ver."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " Upgrading database alert tables not necessary, P"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_19

    .line 1070
    .end local v0           #e:Landroid/database/SQLException;
    :catch_1a
    move-exception v0

    .line 1071
    .restart local v0       #e:Landroid/database/SQLException;
    const-string v2, ""

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Ver."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " Upgrading database alert tables not necessary, S"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1a

    .line 1076
    .end local v0           #e:Landroid/database/SQLException;
    :catch_1b
    move-exception v0

    .line 1077
    .restart local v0       #e:Landroid/database/SQLException;
    const-string v2, ""

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Ver."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " Upgrading database alert tables not necessary, P"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1b

    .line 1082
    .end local v0           #e:Landroid/database/SQLException;
    :catch_1c
    move-exception v0

    .line 1083
    .restart local v0       #e:Landroid/database/SQLException;
    const-string v2, ""

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Ver."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " Upgrading database alert tables not necessary, P"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1c

    .line 1088
    .end local v0           #e:Landroid/database/SQLException;
    :catch_1d
    move-exception v0

    .line 1089
    .restart local v0       #e:Landroid/database/SQLException;
    const-string v2, ""

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Ver."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " Upgrading database alert tables not necessary, S"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1d

    .line 1094
    .end local v0           #e:Landroid/database/SQLException;
    :catch_1e
    move-exception v0

    .line 1095
    .restart local v0       #e:Landroid/database/SQLException;
    const-string v2, ""

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Ver."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " Upgrading database alert tables not necessary, S"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1e

    .line 1100
    .end local v0           #e:Landroid/database/SQLException;
    :catch_1f
    move-exception v0

    .line 1101
    .restart local v0       #e:Landroid/database/SQLException;
    const-string v2, ""

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Ver."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " Upgrading database alert tables not necessary, P"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1f

    .line 1106
    .end local v0           #e:Landroid/database/SQLException;
    :catch_20
    move-exception v0

    .line 1107
    .restart local v0       #e:Landroid/database/SQLException;
    const-string v2, ""

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Ver."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " Upgrading database alert tables not necessary, S"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_20

    .line 1112
    .end local v0           #e:Landroid/database/SQLException;
    :catch_21
    move-exception v0

    .line 1113
    .restart local v0       #e:Landroid/database/SQLException;
    const-string v2, ""

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Ver."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " Upgrading database alert tables not necessary, S"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_21
.end method
