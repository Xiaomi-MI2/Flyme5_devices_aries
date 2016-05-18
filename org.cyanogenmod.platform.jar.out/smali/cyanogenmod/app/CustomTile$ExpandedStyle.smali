.class public Lcyanogenmod/app/CustomTile$ExpandedStyle;
.super Ljava/lang/Object;
.source "CustomTile.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcyanogenmod/app/CustomTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ExpandedStyle"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcyanogenmod/app/CustomTile$ExpandedStyle;",
            ">;"
        }
    .end annotation
.end field

.field public static final GRID_STYLE:I = 0x0

.field public static final LIST_STYLE:I = 0x1

.field public static final NO_STYLE:I = -0x1


# instance fields
.field private expandedItems:[Lcyanogenmod/app/CustomTile$ExpandedItem;

.field private styleId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 327
    new-instance v0, Lcyanogenmod/app/CustomTile$ExpandedStyle$1;

    invoke-direct {v0}, Lcyanogenmod/app/CustomTile$ExpandedStyle$1;-><init>()V

    sput-object v0, Lcyanogenmod/app/CustomTile$ExpandedStyle;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 240
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 241
    const/4 v0, -0x1

    iput v0, p0, Lcyanogenmod/app/CustomTile$ExpandedStyle;->styleId:I

    .line 242
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "parcel"    # Landroid/os/Parcel;

    .prologue
    .line 247
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 248
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    .line 249
    sget-object v0, Lcyanogenmod/app/CustomTile$ExpandedItem;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcyanogenmod/app/CustomTile$ExpandedItem;

    iput-object v0, p0, Lcyanogenmod/app/CustomTile$ExpandedStyle;->expandedItems:[Lcyanogenmod/app/CustomTile$ExpandedItem;

    .line 251
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcyanogenmod/app/CustomTile$ExpandedStyle;->styleId:I

    .line 252
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcyanogenmod/app/CustomTile$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcyanogenmod/app/CustomTile$1;

    .prologue
    .line 224
    invoke-direct {p0, p1}, Lcyanogenmod/app/CustomTile$ExpandedStyle;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method synthetic constructor <init>(Lcyanogenmod/app/CustomTile$1;)V
    .locals 0
    .param p1, "x0"    # Lcyanogenmod/app/CustomTile$1;

    .prologue
    .line 224
    invoke-direct {p0}, Lcyanogenmod/app/CustomTile$ExpandedStyle;-><init>()V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 296
    const/4 v0, 0x0

    return v0
.end method

.method public getExpandedItems()[Lcyanogenmod/app/CustomTile$ExpandedItem;
    .locals 1

    .prologue
    .line 283
    iget-object v0, p0, Lcyanogenmod/app/CustomTile$ExpandedStyle;->expandedItems:[Lcyanogenmod/app/CustomTile$ExpandedItem;

    return-object v0
.end method

.method public getStyle()I
    .locals 1

    .prologue
    .line 291
    iget v0, p0, Lcyanogenmod/app/CustomTile$ExpandedStyle;->styleId:I

    return v0
.end method

.method protected internalSetExpandedItems(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<+",
            "Lcyanogenmod/app/CustomTile$ExpandedItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 267
    .local p1, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<+Lcyanogenmod/app/CustomTile$ExpandedItem;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Lcyanogenmod/app/CustomTile$ExpandedItem;

    iput-object v0, p0, Lcyanogenmod/app/CustomTile$ExpandedStyle;->expandedItems:[Lcyanogenmod/app/CustomTile$ExpandedItem;

    .line 268
    iget-object v0, p0, Lcyanogenmod/app/CustomTile$ExpandedStyle;->expandedItems:[Lcyanogenmod/app/CustomTile$ExpandedItem;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 269
    return-void
.end method

.method protected internalStyleId(I)V
    .locals 0
    .param p1, "id"    # I

    .prologue
    .line 275
    iput p1, p0, Lcyanogenmod/app/CustomTile$ExpandedStyle;->styleId:I

    .line 276
    return-void
.end method

.method public setBuilder(Lcyanogenmod/app/CustomTile$Builder;)V
    .locals 0
    .param p1, "builder"    # Lcyanogenmod/app/CustomTile$Builder;

    .prologue
    .line 258
    if-eqz p1, :cond_0

    .line 259
    invoke-virtual {p1, p0}, Lcyanogenmod/app/CustomTile$Builder;->setExpandedStyle(Lcyanogenmod/app/CustomTile$ExpandedStyle;)Lcyanogenmod/app/CustomTile$Builder;

    .line 261
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 8

    .prologue
    .line 312
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 313
    .local v2, "b":Ljava/lang/StringBuilder;
    const-string v6, "line.separator"

    invoke-static {v6}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 314
    .local v0, "NEW_LINE":Ljava/lang/String;
    iget-object v6, p0, Lcyanogenmod/app/CustomTile$ExpandedStyle;->expandedItems:[Lcyanogenmod/app/CustomTile$ExpandedItem;

    if-eqz v6, :cond_0

    .line 315
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "expandedItems= "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 316
    iget-object v1, p0, Lcyanogenmod/app/CustomTile$ExpandedStyle;->expandedItems:[Lcyanogenmod/app/CustomTile$ExpandedItem;

    .local v1, "arr$":[Lcyanogenmod/app/CustomTile$ExpandedItem;
    array-length v5, v1

    .local v5, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v5, :cond_0

    aget-object v4, v1, v3

    .line 317
    .local v4, "item":Lcyanogenmod/app/CustomTile$ExpandedItem;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "     item="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Lcyanogenmod/app/CustomTile$ExpandedItem;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 316
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 320
    .end local v1    # "arr$":[Lcyanogenmod/app/CustomTile$ExpandedItem;
    .end local v3    # "i$":I
    .end local v4    # "item":Lcyanogenmod/app/CustomTile$ExpandedItem;
    .end local v5    # "len$":I
    :cond_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "styleId="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcyanogenmod/app/CustomTile$ExpandedStyle;->styleId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 321
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "i"    # I

    .prologue
    const/4 v1, 0x0

    .line 301
    iget-object v0, p0, Lcyanogenmod/app/CustomTile$ExpandedStyle;->expandedItems:[Lcyanogenmod/app/CustomTile$ExpandedItem;

    if-eqz v0, :cond_0

    .line 302
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 303
    iget-object v0, p0, Lcyanogenmod/app/CustomTile$ExpandedStyle;->expandedItems:[Lcyanogenmod/app/CustomTile$ExpandedItem;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 307
    :goto_0
    iget v0, p0, Lcyanogenmod/app/CustomTile$ExpandedStyle;->styleId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 308
    return-void

    .line 305
    :cond_0
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0
.end method
