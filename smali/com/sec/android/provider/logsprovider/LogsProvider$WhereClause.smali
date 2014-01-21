.class Lcom/sec/android/provider/logsprovider/LogsProvider$WhereClause;
.super Ljava/lang/Object;
.source "LogsProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/provider/logsprovider/LogsProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "WhereClause"
.end annotation


# instance fields
.field private final mUpdateVVM:I

.field private final mVVM_where:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter "vvm_where"
    .parameter "updateVVM"

    .prologue
    .line 3261
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 3262
    iput-object p1, p0, Lcom/sec/android/provider/logsprovider/LogsProvider$WhereClause;->mVVM_where:Ljava/lang/String;

    .line 3263
    iput p2, p0, Lcom/sec/android/provider/logsprovider/LogsProvider$WhereClause;->mUpdateVVM:I

    .line 3264
    return-void
.end method


# virtual methods
.method public final getClause()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3267
    iget-object v0, p0, Lcom/sec/android/provider/logsprovider/LogsProvider$WhereClause;->mVVM_where:Ljava/lang/String;

    return-object v0
.end method

.method public final getUpdateVVM()I
    .locals 3

    .prologue
    .line 3271
    invoke-static {}, Lcom/sec/android/provider/logsprovider/LogsProvider;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WhereClause getUpdateVVM : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/provider/logsprovider/LogsProvider$WhereClause;->mUpdateVVM:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 3272
    iget v0, p0, Lcom/sec/android/provider/logsprovider/LogsProvider$WhereClause;->mUpdateVVM:I

    return v0
.end method
