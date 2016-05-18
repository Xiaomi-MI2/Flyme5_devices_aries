.class public Lcyanogenmod/app/CustomTile$Builder;
.super Ljava/lang/Object;
.source "CustomTile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcyanogenmod/app/CustomTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mContentDescription:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mExpandedStyle:Lcyanogenmod/app/CustomTile$ExpandedStyle;

.field private mIcon:I

.field private mLabel:Ljava/lang/String;

.field private mOnClick:Landroid/app/PendingIntent;

.field private mOnClickUri:Landroid/net/Uri;

.field private mOnSettingsClick:Landroid/content/Intent;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 642
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 643
    iput-object p1, p0, Lcyanogenmod/app/CustomTile$Builder;->mContext:Landroid/content/Context;

    .line 644
    return-void
.end method


# virtual methods
.method public build()Lcyanogenmod/app/CustomTile;
    .locals 2

    .prologue
    .line 747
    new-instance v0, Lcyanogenmod/app/CustomTile;

    invoke-direct {v0}, Lcyanogenmod/app/CustomTile;-><init>()V

    .line 748
    .local v0, "tile":Lcyanogenmod/app/CustomTile;
    iget-object v1, p0, Lcyanogenmod/app/CustomTile$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    # setter for: Lcyanogenmod/app/CustomTile;->resourcesPackageName:Ljava/lang/String;
    invoke-static {v0, v1}, Lcyanogenmod/app/CustomTile;->access$302(Lcyanogenmod/app/CustomTile;Ljava/lang/String;)Ljava/lang/String;

    .line 749
    iget-object v1, p0, Lcyanogenmod/app/CustomTile$Builder;->mOnClick:Landroid/app/PendingIntent;

    iput-object v1, v0, Lcyanogenmod/app/CustomTile;->onClick:Landroid/app/PendingIntent;

    .line 750
    iget-object v1, p0, Lcyanogenmod/app/CustomTile$Builder;->mOnSettingsClick:Landroid/content/Intent;

    iput-object v1, v0, Lcyanogenmod/app/CustomTile;->onSettingsClick:Landroid/content/Intent;

    .line 751
    iget-object v1, p0, Lcyanogenmod/app/CustomTile$Builder;->mOnClickUri:Landroid/net/Uri;

    iput-object v1, v0, Lcyanogenmod/app/CustomTile;->onClickUri:Landroid/net/Uri;

    .line 752
    iget-object v1, p0, Lcyanogenmod/app/CustomTile$Builder;->mLabel:Ljava/lang/String;

    iput-object v1, v0, Lcyanogenmod/app/CustomTile;->label:Ljava/lang/String;

    .line 753
    iget-object v1, p0, Lcyanogenmod/app/CustomTile$Builder;->mContentDescription:Ljava/lang/String;

    iput-object v1, v0, Lcyanogenmod/app/CustomTile;->contentDescription:Ljava/lang/String;

    .line 754
    iget-object v1, p0, Lcyanogenmod/app/CustomTile$Builder;->mExpandedStyle:Lcyanogenmod/app/CustomTile$ExpandedStyle;

    iput-object v1, v0, Lcyanogenmod/app/CustomTile;->expandedStyle:Lcyanogenmod/app/CustomTile$ExpandedStyle;

    .line 755
    iget v1, p0, Lcyanogenmod/app/CustomTile$Builder;->mIcon:I

    iput v1, v0, Lcyanogenmod/app/CustomTile;->icon:I

    .line 756
    return-object v0
.end method

.method public setContentDescription(I)Lcyanogenmod/app/CustomTile$Builder;
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 682
    iget-object v0, p0, Lcyanogenmod/app/CustomTile$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcyanogenmod/app/CustomTile$Builder;->mContentDescription:Ljava/lang/String;

    .line 683
    return-object p0
.end method

.method public setContentDescription(Ljava/lang/String;)Lcyanogenmod/app/CustomTile$Builder;
    .locals 0
    .param p1, "contentDescription"    # Ljava/lang/String;

    .prologue
    .line 672
    iput-object p1, p0, Lcyanogenmod/app/CustomTile$Builder;->mContentDescription:Ljava/lang/String;

    .line 673
    return-object p0
.end method

.method public setExpandedStyle(Lcyanogenmod/app/CustomTile$ExpandedStyle;)Lcyanogenmod/app/CustomTile$Builder;
    .locals 1
    .param p1, "expandedStyle"    # Lcyanogenmod/app/CustomTile$ExpandedStyle;

    .prologue
    .line 733
    iget-object v0, p0, Lcyanogenmod/app/CustomTile$Builder;->mExpandedStyle:Lcyanogenmod/app/CustomTile$ExpandedStyle;

    if-eq v0, p1, :cond_0

    .line 734
    iput-object p1, p0, Lcyanogenmod/app/CustomTile$Builder;->mExpandedStyle:Lcyanogenmod/app/CustomTile$ExpandedStyle;

    .line 735
    iget-object v0, p0, Lcyanogenmod/app/CustomTile$Builder;->mExpandedStyle:Lcyanogenmod/app/CustomTile$ExpandedStyle;

    if-eqz v0, :cond_0

    .line 736
    invoke-virtual {p1, p0}, Lcyanogenmod/app/CustomTile$ExpandedStyle;->setBuilder(Lcyanogenmod/app/CustomTile$Builder;)V

    .line 739
    :cond_0
    return-object p0
.end method

.method public setIcon(I)Lcyanogenmod/app/CustomTile$Builder;
    .locals 0
    .param p1, "drawableId"    # I

    .prologue
    .line 723
    iput p1, p0, Lcyanogenmod/app/CustomTile$Builder;->mIcon:I

    .line 724
    return-object p0
.end method

.method public setLabel(I)Lcyanogenmod/app/CustomTile$Builder;
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 662
    iget-object v0, p0, Lcyanogenmod/app/CustomTile$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcyanogenmod/app/CustomTile$Builder;->mLabel:Ljava/lang/String;

    .line 663
    return-object p0
.end method

.method public setLabel(Ljava/lang/String;)Lcyanogenmod/app/CustomTile$Builder;
    .locals 0
    .param p1, "label"    # Ljava/lang/String;

    .prologue
    .line 652
    iput-object p1, p0, Lcyanogenmod/app/CustomTile$Builder;->mLabel:Ljava/lang/String;

    .line 653
    return-object p0
.end method

.method public setOnClickIntent(Landroid/app/PendingIntent;)Lcyanogenmod/app/CustomTile$Builder;
    .locals 0
    .param p1, "intent"    # Landroid/app/PendingIntent;

    .prologue
    .line 692
    iput-object p1, p0, Lcyanogenmod/app/CustomTile$Builder;->mOnClick:Landroid/app/PendingIntent;

    .line 693
    return-object p0
.end method

.method public setOnClickUri(Landroid/net/Uri;)Lcyanogenmod/app/CustomTile$Builder;
    .locals 0
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 713
    iput-object p1, p0, Lcyanogenmod/app/CustomTile$Builder;->mOnClickUri:Landroid/net/Uri;

    .line 714
    return-object p0
.end method

.method public setOnSettingsClickIntent(Landroid/content/Intent;)Lcyanogenmod/app/CustomTile$Builder;
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 703
    iput-object p1, p0, Lcyanogenmod/app/CustomTile$Builder;->mOnSettingsClick:Landroid/content/Intent;

    .line 704
    return-object p0
.end method
