.class public Lcyanogenmod/app/StatusBarPanelCustomTile;
.super Ljava/lang/Object;
.source "StatusBarPanelCustomTile.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcyanogenmod/app/StatusBarPanelCustomTile;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final customTile:Lcyanogenmod/app/CustomTile;

.field private final id:I

.field private final initialPid:I

.field private final key:Ljava/lang/String;

.field private final opPkg:Ljava/lang/String;

.field private final pkg:Ljava/lang/String;

.field private final postTime:J

.field private final resPkg:Ljava/lang/String;

.field private final tag:Ljava/lang/String;

.field private final uid:I

.field private final user:Landroid/os/UserHandle;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 90
    new-instance v0, Lcyanogenmod/app/StatusBarPanelCustomTile$1;

    invoke-direct {v0}, Lcyanogenmod/app/StatusBarPanelCustomTile$1;-><init>()V

    sput-object v0, Lcyanogenmod/app/StatusBarPanelCustomTile;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcyanogenmod/app/StatusBarPanelCustomTile;->pkg:Ljava/lang/String;

    .line 70
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcyanogenmod/app/StatusBarPanelCustomTile;->resPkg:Ljava/lang/String;

    .line 71
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcyanogenmod/app/StatusBarPanelCustomTile;->opPkg:Ljava/lang/String;

    .line 72
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcyanogenmod/app/StatusBarPanelCustomTile;->id:I

    .line 73
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    .line 74
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcyanogenmod/app/StatusBarPanelCustomTile;->tag:Ljava/lang/String;

    .line 78
    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcyanogenmod/app/StatusBarPanelCustomTile;->uid:I

    .line 79
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcyanogenmod/app/StatusBarPanelCustomTile;->initialPid:I

    .line 80
    new-instance v0, Lcyanogenmod/app/CustomTile;

    invoke-direct {v0, p1}, Lcyanogenmod/app/CustomTile;-><init>(Landroid/os/Parcel;)V

    iput-object v0, p0, Lcyanogenmod/app/StatusBarPanelCustomTile;->customTile:Lcyanogenmod/app/CustomTile;

    .line 81
    invoke-static {p1}, Landroid/os/UserHandle;->readFromParcel(Landroid/os/Parcel;)Landroid/os/UserHandle;

    move-result-object v0

    iput-object v0, p0, Lcyanogenmod/app/StatusBarPanelCustomTile;->user:Landroid/os/UserHandle;

    .line 82
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcyanogenmod/app/StatusBarPanelCustomTile;->postTime:J

    .line 83
    invoke-direct {p0}, Lcyanogenmod/app/StatusBarPanelCustomTile;->key()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcyanogenmod/app/StatusBarPanelCustomTile;->key:Ljava/lang/String;

    .line 84
    return-void

    .line 76
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcyanogenmod/app/StatusBarPanelCustomTile;->tag:Ljava/lang/String;

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IILcyanogenmod/app/CustomTile;Landroid/os/UserHandle;)V
    .locals 12
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "resPkg"    # Ljava/lang/String;
    .param p3, "opPkg"    # Ljava/lang/String;
    .param p4, "id"    # I
    .param p5, "tag"    # Ljava/lang/String;
    .param p6, "uid"    # I
    .param p7, "initialPid"    # I
    .param p8, "customTile"    # Lcyanogenmod/app/CustomTile;
    .param p9, "user"    # Landroid/os/UserHandle;

    .prologue
    .line 44
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    invoke-direct/range {v0 .. v11}, Lcyanogenmod/app/StatusBarPanelCustomTile;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IILcyanogenmod/app/CustomTile;Landroid/os/UserHandle;J)V

    .line 46
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IILcyanogenmod/app/CustomTile;Landroid/os/UserHandle;J)V
    .locals 2
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "resPkg"    # Ljava/lang/String;
    .param p3, "opPkg"    # Ljava/lang/String;
    .param p4, "id"    # I
    .param p5, "tag"    # Ljava/lang/String;
    .param p6, "uid"    # I
    .param p7, "initialPid"    # I
    .param p8, "customTile"    # Lcyanogenmod/app/CustomTile;
    .param p9, "user"    # Landroid/os/UserHandle;
    .param p10, "postTime"    # J

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 52
    :cond_0
    if-nez p8, :cond_1

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 54
    :cond_1
    iput-object p1, p0, Lcyanogenmod/app/StatusBarPanelCustomTile;->pkg:Ljava/lang/String;

    .line 55
    iput-object p2, p0, Lcyanogenmod/app/StatusBarPanelCustomTile;->resPkg:Ljava/lang/String;

    .line 56
    iput-object p3, p0, Lcyanogenmod/app/StatusBarPanelCustomTile;->opPkg:Ljava/lang/String;

    .line 57
    iput p4, p0, Lcyanogenmod/app/StatusBarPanelCustomTile;->id:I

    .line 58
    iput-object p5, p0, Lcyanogenmod/app/StatusBarPanelCustomTile;->tag:Ljava/lang/String;

    .line 59
    iput p6, p0, Lcyanogenmod/app/StatusBarPanelCustomTile;->uid:I

    .line 60
    iput p7, p0, Lcyanogenmod/app/StatusBarPanelCustomTile;->initialPid:I

    .line 61
    iput-object p8, p0, Lcyanogenmod/app/StatusBarPanelCustomTile;->customTile:Lcyanogenmod/app/CustomTile;

    .line 62
    iput-object p9, p0, Lcyanogenmod/app/StatusBarPanelCustomTile;->user:Landroid/os/UserHandle;

    .line 63
    iput-wide p10, p0, Lcyanogenmod/app/StatusBarPanelCustomTile;->postTime:J

    .line 64
    invoke-direct {p0}, Lcyanogenmod/app/StatusBarPanelCustomTile;->key()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcyanogenmod/app/StatusBarPanelCustomTile;->key:Ljava/lang/String;

    .line 65
    return-void
.end method

.method private key()Ljava/lang/String;
    .locals 2

    .prologue
    .line 87
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcyanogenmod/app/StatusBarPanelCustomTile;->user:Landroid/os/UserHandle;

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcyanogenmod/app/StatusBarPanelCustomTile;->pkg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcyanogenmod/app/StatusBarPanelCustomTile;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcyanogenmod/app/StatusBarPanelCustomTile;->tag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcyanogenmod/app/StatusBarPanelCustomTile;->uid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public clone()Lcyanogenmod/app/StatusBarPanelCustomTile;
    .locals 12

    .prologue
    .line 137
    new-instance v0, Lcyanogenmod/app/StatusBarPanelCustomTile;

    iget-object v1, p0, Lcyanogenmod/app/StatusBarPanelCustomTile;->pkg:Ljava/lang/String;

    iget-object v2, p0, Lcyanogenmod/app/StatusBarPanelCustomTile;->resPkg:Ljava/lang/String;

    iget-object v3, p0, Lcyanogenmod/app/StatusBarPanelCustomTile;->opPkg:Ljava/lang/String;

    iget v4, p0, Lcyanogenmod/app/StatusBarPanelCustomTile;->id:I

    iget-object v5, p0, Lcyanogenmod/app/StatusBarPanelCustomTile;->tag:Ljava/lang/String;

    iget v6, p0, Lcyanogenmod/app/StatusBarPanelCustomTile;->uid:I

    iget v7, p0, Lcyanogenmod/app/StatusBarPanelCustomTile;->initialPid:I

    iget-object v8, p0, Lcyanogenmod/app/StatusBarPanelCustomTile;->customTile:Lcyanogenmod/app/CustomTile;

    invoke-virtual {v8}, Lcyanogenmod/app/CustomTile;->clone()Lcyanogenmod/app/CustomTile;

    move-result-object v8

    iget-object v9, p0, Lcyanogenmod/app/StatusBarPanelCustomTile;->user:Landroid/os/UserHandle;

    iget-wide v10, p0, Lcyanogenmod/app/StatusBarPanelCustomTile;->postTime:J

    invoke-direct/range {v0 .. v11}, Lcyanogenmod/app/StatusBarPanelCustomTile;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IILcyanogenmod/app/CustomTile;Landroid/os/UserHandle;J)V

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 27
    invoke-virtual {p0}, Lcyanogenmod/app/StatusBarPanelCustomTile;->clone()Lcyanogenmod/app/StatusBarPanelCustomTile;

    move-result-object v0

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 113
    const/4 v0, 0x0

    return v0
.end method

.method public getCustomTile()Lcyanogenmod/app/CustomTile;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcyanogenmod/app/StatusBarPanelCustomTile;->customTile:Lcyanogenmod/app/CustomTile;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 156
    iget v0, p0, Lcyanogenmod/app/StatusBarPanelCustomTile;->id:I

    return v0
.end method

.method public getInitialPid()I
    .locals 1

    .prologue
    .line 188
    iget v0, p0, Lcyanogenmod/app/StatusBarPanelCustomTile;->initialPid:I

    return v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lcyanogenmod/app/StatusBarPanelCustomTile;->key:Ljava/lang/String;

    return-object v0
.end method

.method public getOpPkg()Ljava/lang/String;
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lcyanogenmod/app/StatusBarPanelCustomTile;->opPkg:Ljava/lang/String;

    return-object v0
.end method

.method public getPackage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcyanogenmod/app/StatusBarPanelCustomTile;->pkg:Ljava/lang/String;

    return-object v0
.end method

.method public getPostTime()J
    .locals 2

    .prologue
    .line 200
    iget-wide v0, p0, Lcyanogenmod/app/StatusBarPanelCustomTile;->postTime:J

    return-wide v0
.end method

.method public getResPkg()Ljava/lang/String;
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lcyanogenmod/app/StatusBarPanelCustomTile;->resPkg:Ljava/lang/String;

    return-object v0
.end method

.method public getTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lcyanogenmod/app/StatusBarPanelCustomTile;->tag:Ljava/lang/String;

    return-object v0
.end method

.method public getUid()I
    .locals 1

    .prologue
    .line 173
    iget v0, p0, Lcyanogenmod/app/StatusBarPanelCustomTile;->uid:I

    return v0
.end method

.method public getUser()Landroid/os/UserHandle;
    .locals 1

    .prologue
    .line 195
    iget-object v0, p0, Lcyanogenmod/app/StatusBarPanelCustomTile;->user:Landroid/os/UserHandle;

    return-object v0
.end method

.method public getUserId()I
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcyanogenmod/app/StatusBarPanelCustomTile;->user:Landroid/os/UserHandle;

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 118
    iget-object v0, p0, Lcyanogenmod/app/StatusBarPanelCustomTile;->pkg:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 119
    iget-object v0, p0, Lcyanogenmod/app/StatusBarPanelCustomTile;->resPkg:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 120
    iget-object v0, p0, Lcyanogenmod/app/StatusBarPanelCustomTile;->opPkg:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 121
    iget v0, p0, Lcyanogenmod/app/StatusBarPanelCustomTile;->id:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 122
    iget-object v0, p0, Lcyanogenmod/app/StatusBarPanelCustomTile;->tag:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 123
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 124
    iget-object v0, p0, Lcyanogenmod/app/StatusBarPanelCustomTile;->tag:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 128
    :goto_0
    iget v0, p0, Lcyanogenmod/app/StatusBarPanelCustomTile;->uid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 129
    iget v0, p0, Lcyanogenmod/app/StatusBarPanelCustomTile;->initialPid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 130
    iget-object v0, p0, Lcyanogenmod/app/StatusBarPanelCustomTile;->customTile:Lcyanogenmod/app/CustomTile;

    invoke-virtual {v0, p1, p2}, Lcyanogenmod/app/CustomTile;->writeToParcel(Landroid/os/Parcel;I)V

    .line 131
    iget-object v0, p0, Lcyanogenmod/app/StatusBarPanelCustomTile;->user:Landroid/os/UserHandle;

    invoke-virtual {v0, p1, p2}, Landroid/os/UserHandle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 132
    iget-wide v0, p0, Lcyanogenmod/app/StatusBarPanelCustomTile;->postTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 133
    return-void

    .line 126
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0
.end method
