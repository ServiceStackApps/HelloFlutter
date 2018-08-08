/* Options:
Date: 2018-04-16 04:46:25
Version: 5.03
Tip: To override a DTO option, remove "//" prefix before updating
BaseUrl: https://www.techstacks.io

//GlobalNamespace: 
//AddServiceStackTypes: True
//AddResponseStatus: False
//AddImplicitVersion: 
//AddDescriptionAsComments: True
//IncludeTypes: 
//ExcludeTypes: 
//DefaultImports: package:servicestack/servicestack.dart
*/

import 'package:servicestack/servicestack.dart';

enum PostType
{
    Announcement,
    Post,
    Showcase,
    Question,
    Request,
}

class Post implements IConvertible
{
    int id;
    int organizationId;
    int userId;
    PostType type;
    int categoryId;
    String title;
    String slug;
    String url;
    String imageUrl;
    // @StringLength(2147483647)
    String content;

    // @StringLength(2147483647)
    String contentHtml;

    int pinCommentId;
    List<int> technologyIds;
    DateTime fromDate;
    DateTime toDate;
    String location;
    String metaType;
    String meta;
    bool approved;
    int upVotes;
    int downVotes;
    int points;
    int views;
    int favorites;
    int subscribers;
    int replyCount;
    int commentsCount;
    int wordCount;
    int reportCount;
    int linksCount;
    int linkedToCount;
    int score;
    int rank;
    List<String> labels;
    List<int> refUserIds;
    List<String> refLinks;
    List<int> muteUserIds;
    DateTime lastCommentDate;
    int lastCommentId;
    int lastCommentUserId;
    DateTime deleted;
    String deletedBy;
    DateTime locked;
    String lockedBy;
    DateTime hidden;
    String hiddenBy;
    String status;
    DateTime statusDate;
    String statusBy;
    bool archived;
    DateTime bumped;
    DateTime created;
    String createdBy;
    DateTime modified;
    String modifiedBy;
    int refId;
    String refSource;
    String refUrn;

    Post({this.id,this.organizationId,this.userId,this.type,this.categoryId,this.title,this.slug,this.url,this.imageUrl,this.content,this.contentHtml,this.pinCommentId,this.technologyIds,this.fromDate,this.toDate,this.location,this.metaType,this.meta,this.approved,this.upVotes,this.downVotes,this.points,this.views,this.favorites,this.subscribers,this.replyCount,this.commentsCount,this.wordCount,this.reportCount,this.linksCount,this.linkedToCount,this.score,this.rank,this.labels,this.refUserIds,this.refLinks,this.muteUserIds,this.lastCommentDate,this.lastCommentId,this.lastCommentUserId,this.deleted,this.deletedBy,this.locked,this.lockedBy,this.hidden,this.hiddenBy,this.status,this.statusDate,this.statusBy,this.archived,this.bumped,this.created,this.createdBy,this.modified,this.modifiedBy,this.refId,this.refSource,this.refUrn});
    Post.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        id = json['id'];
        organizationId = json['organizationId'];
        userId = json['userId'];
        type = JsonConverters.fromJson(json['type'],'PostType',context);
        categoryId = json['categoryId'];
        title = json['title'];
        slug = json['slug'];
        url = json['url'];
        imageUrl = json['imageUrl'];
        content = json['content'];
        contentHtml = json['contentHtml'];
        pinCommentId = json['pinCommentId'];
        technologyIds = JsonConverters.fromJson(json['technologyIds'],'List<int>',context);
        fromDate = JsonConverters.fromJson(json['fromDate'],'DateTime',context);
        toDate = JsonConverters.fromJson(json['toDate'],'DateTime',context);
        location = json['location'];
        metaType = json['metaType'];
        meta = json['meta'];
        approved = json['approved'];
        upVotes = json['upVotes'];
        downVotes = json['downVotes'];
        points = json['points'];
        views = json['views'];
        favorites = json['favorites'];
        subscribers = json['subscribers'];
        replyCount = json['replyCount'];
        commentsCount = json['commentsCount'];
        wordCount = json['wordCount'];
        reportCount = json['reportCount'];
        linksCount = json['linksCount'];
        linkedToCount = json['linkedToCount'];
        score = json['score'];
        rank = json['rank'];
        labels = JsonConverters.fromJson(json['labels'],'List<String>',context);
        refUserIds = JsonConverters.fromJson(json['refUserIds'],'List<int>',context);
        refLinks = JsonConverters.fromJson(json['refLinks'],'List<String>',context);
        muteUserIds = JsonConverters.fromJson(json['muteUserIds'],'List<int>',context);
        lastCommentDate = JsonConverters.fromJson(json['lastCommentDate'],'DateTime',context);
        lastCommentId = json['lastCommentId'];
        lastCommentUserId = json['lastCommentUserId'];
        deleted = JsonConverters.fromJson(json['deleted'],'DateTime',context);
        deletedBy = json['deletedBy'];
        locked = JsonConverters.fromJson(json['locked'],'DateTime',context);
        lockedBy = json['lockedBy'];
        hidden = JsonConverters.fromJson(json['hidden'],'DateTime',context);
        hiddenBy = json['hiddenBy'];
        status = json['status'];
        statusDate = JsonConverters.fromJson(json['statusDate'],'DateTime',context);
        statusBy = json['statusBy'];
        archived = json['archived'];
        bumped = JsonConverters.fromJson(json['bumped'],'DateTime',context);
        created = JsonConverters.fromJson(json['created'],'DateTime',context);
        createdBy = json['createdBy'];
        modified = JsonConverters.fromJson(json['modified'],'DateTime',context);
        modifiedBy = json['modifiedBy'];
        refId = json['refId'];
        refSource = json['refSource'];
        refUrn = json['refUrn'];
        return this;
    }

    Map<String, dynamic> toJson() => {
        'id': id,
        'organizationId': organizationId,
        'userId': userId,
        'type': JsonConverters.toJson(type,'PostType',context),
        'categoryId': categoryId,
        'title': title,
        'slug': slug,
        'url': url,
        'imageUrl': imageUrl,
        'content': content,
        'contentHtml': contentHtml,
        'pinCommentId': pinCommentId,
        'technologyIds': JsonConverters.toJson(technologyIds,'List<int>',context),
        'fromDate': JsonConverters.toJson(fromDate,'DateTime',context),
        'toDate': JsonConverters.toJson(toDate,'DateTime',context),
        'location': location,
        'metaType': metaType,
        'meta': meta,
        'approved': approved,
        'upVotes': upVotes,
        'downVotes': downVotes,
        'points': points,
        'views': views,
        'favorites': favorites,
        'subscribers': subscribers,
        'replyCount': replyCount,
        'commentsCount': commentsCount,
        'wordCount': wordCount,
        'reportCount': reportCount,
        'linksCount': linksCount,
        'linkedToCount': linkedToCount,
        'score': score,
        'rank': rank,
        'labels': JsonConverters.toJson(labels,'List<String>',context),
        'refUserIds': JsonConverters.toJson(refUserIds,'List<int>',context),
        'refLinks': JsonConverters.toJson(refLinks,'List<String>',context),
        'muteUserIds': JsonConverters.toJson(muteUserIds,'List<int>',context),
        'lastCommentDate': JsonConverters.toJson(lastCommentDate,'DateTime',context),
        'lastCommentId': lastCommentId,
        'lastCommentUserId': lastCommentUserId,
        'deleted': JsonConverters.toJson(deleted,'DateTime',context),
        'deletedBy': deletedBy,
        'locked': JsonConverters.toJson(locked,'DateTime',context),
        'lockedBy': lockedBy,
        'hidden': JsonConverters.toJson(hidden,'DateTime',context),
        'hiddenBy': hiddenBy,
        'status': status,
        'statusDate': JsonConverters.toJson(statusDate,'DateTime',context),
        'statusBy': statusBy,
        'archived': archived,
        'bumped': JsonConverters.toJson(bumped,'DateTime',context),
        'created': JsonConverters.toJson(created,'DateTime',context),
        'createdBy': createdBy,
        'modified': JsonConverters.toJson(modified,'DateTime',context),
        'modifiedBy': modifiedBy,
        'refId': refId,
        'refSource': refSource,
        'refUrn': refUrn
    };

    TypeContext context = _ctx;
}

class Organization implements IConvertible
{
    int id;
    String name;
    String slug;
    String description;
    String descriptionHtml;
    String color;
    String textColor;
    String linkColor;
    String backgroundColor;
    String backgroundUrl;
    String logoUrl;
    String heroUrl;
    String lang;
    String defaultPostType;
    List<String> defaultSubscriptionPostTypes;
    List<String> postTypes;
    List<String> moderatorPostTypes;
    int deletePostsWithReportCount;
    bool disableInvites;
    int upVotes;
    int downVotes;
    int views;
    int favorites;
    int subscribers;
    int commentsCount;
    int postsCount;
    int score;
    int rank;
    int refId;
    String refSource;
    DateTime hidden;
    String hiddenBy;
    DateTime locked;
    String lockedBy;
    DateTime deleted;
    String deletedBy;
    DateTime created;
    String createdBy;
    DateTime modified;
    String modifiedBy;

    Organization({this.id,this.name,this.slug,this.description,this.descriptionHtml,this.color,this.textColor,this.linkColor,this.backgroundColor,this.backgroundUrl,this.logoUrl,this.heroUrl,this.lang,this.defaultPostType,this.defaultSubscriptionPostTypes,this.postTypes,this.moderatorPostTypes,this.deletePostsWithReportCount,this.disableInvites,this.upVotes,this.downVotes,this.views,this.favorites,this.subscribers,this.commentsCount,this.postsCount,this.score,this.rank,this.refId,this.refSource,this.hidden,this.hiddenBy,this.locked,this.lockedBy,this.deleted,this.deletedBy,this.created,this.createdBy,this.modified,this.modifiedBy});
    Organization.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        id = json['id'];
        name = json['name'];
        slug = json['slug'];
        description = json['description'];
        descriptionHtml = json['descriptionHtml'];
        color = json['color'];
        textColor = json['textColor'];
        linkColor = json['linkColor'];
        backgroundColor = json['backgroundColor'];
        backgroundUrl = json['backgroundUrl'];
        logoUrl = json['logoUrl'];
        heroUrl = json['heroUrl'];
        lang = json['lang'];
        defaultPostType = json['defaultPostType'];
        defaultSubscriptionPostTypes = JsonConverters.fromJson(json['defaultSubscriptionPostTypes'],'List<String>',context);
        postTypes = JsonConverters.fromJson(json['postTypes'],'List<String>',context);
        moderatorPostTypes = JsonConverters.fromJson(json['moderatorPostTypes'],'List<String>',context);
        deletePostsWithReportCount = json['deletePostsWithReportCount'];
        disableInvites = json['disableInvites'];
        upVotes = json['upVotes'];
        downVotes = json['downVotes'];
        views = json['views'];
        favorites = json['favorites'];
        subscribers = json['subscribers'];
        commentsCount = json['commentsCount'];
        postsCount = json['postsCount'];
        score = json['score'];
        rank = json['rank'];
        refId = json['refId'];
        refSource = json['refSource'];
        hidden = JsonConverters.fromJson(json['hidden'],'DateTime',context);
        hiddenBy = json['hiddenBy'];
        locked = JsonConverters.fromJson(json['locked'],'DateTime',context);
        lockedBy = json['lockedBy'];
        deleted = JsonConverters.fromJson(json['deleted'],'DateTime',context);
        deletedBy = json['deletedBy'];
        created = JsonConverters.fromJson(json['created'],'DateTime',context);
        createdBy = json['createdBy'];
        modified = JsonConverters.fromJson(json['modified'],'DateTime',context);
        modifiedBy = json['modifiedBy'];
        return this;
    }

    Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'slug': slug,
        'description': description,
        'descriptionHtml': descriptionHtml,
        'color': color,
        'textColor': textColor,
        'linkColor': linkColor,
        'backgroundColor': backgroundColor,
        'backgroundUrl': backgroundUrl,
        'logoUrl': logoUrl,
        'heroUrl': heroUrl,
        'lang': lang,
        'defaultPostType': defaultPostType,
        'defaultSubscriptionPostTypes': JsonConverters.toJson(defaultSubscriptionPostTypes,'List<String>',context),
        'postTypes': JsonConverters.toJson(postTypes,'List<String>',context),
        'moderatorPostTypes': JsonConverters.toJson(moderatorPostTypes,'List<String>',context),
        'deletePostsWithReportCount': deletePostsWithReportCount,
        'disableInvites': disableInvites,
        'upVotes': upVotes,
        'downVotes': downVotes,
        'views': views,
        'favorites': favorites,
        'subscribers': subscribers,
        'commentsCount': commentsCount,
        'postsCount': postsCount,
        'score': score,
        'rank': rank,
        'refId': refId,
        'refSource': refSource,
        'hidden': JsonConverters.toJson(hidden,'DateTime',context),
        'hiddenBy': hiddenBy,
        'locked': JsonConverters.toJson(locked,'DateTime',context),
        'lockedBy': lockedBy,
        'deleted': JsonConverters.toJson(deleted,'DateTime',context),
        'deletedBy': deletedBy,
        'created': JsonConverters.toJson(created,'DateTime',context),
        'createdBy': createdBy,
        'modified': JsonConverters.toJson(modified,'DateTime',context),
        'modifiedBy': modifiedBy
    };

    TypeContext context = _ctx;
}

class OrganizationLabel implements IConvertible
{
    String slug;
    int organizationId;
    String description;
    String color;

    OrganizationLabel({this.slug,this.organizationId,this.description,this.color});
    OrganizationLabel.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        slug = json['slug'];
        organizationId = json['organizationId'];
        description = json['description'];
        color = json['color'];
        return this;
    }

    Map<String, dynamic> toJson() => {
        'slug': slug,
        'organizationId': organizationId,
        'description': description,
        'color': color
    };

    TypeContext context = _ctx;
}

class Category implements IConvertible
{
    int id;
    int organizationId;
    String name;
    String slug;
    String description;
    String color;
    List<int> technologyIds;
    int commentsCount;
    int postsCount;
    int score;
    int rank;

    Category({this.id,this.organizationId,this.name,this.slug,this.description,this.color,this.technologyIds,this.commentsCount,this.postsCount,this.score,this.rank});
    Category.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        id = json['id'];
        organizationId = json['organizationId'];
        name = json['name'];
        slug = json['slug'];
        description = json['description'];
        color = json['color'];
        technologyIds = JsonConverters.fromJson(json['technologyIds'],'List<int>',context);
        commentsCount = json['commentsCount'];
        postsCount = json['postsCount'];
        score = json['score'];
        rank = json['rank'];
        return this;
    }

    Map<String, dynamic> toJson() => {
        'id': id,
        'organizationId': organizationId,
        'name': name,
        'slug': slug,
        'description': description,
        'color': color,
        'technologyIds': JsonConverters.toJson(technologyIds,'List<int>',context),
        'commentsCount': commentsCount,
        'postsCount': postsCount,
        'score': score,
        'rank': rank
    };

    TypeContext context = _ctx;
}

class OrganizationMember implements IConvertible
{
    int id;
    int organizationId;
    int userId;
    String userName;
    bool isOwner;
    bool isModerator;
    bool denyAll;
    bool denyPosts;
    bool denyComments;
    String notes;

    OrganizationMember({this.id,this.organizationId,this.userId,this.userName,this.isOwner,this.isModerator,this.denyAll,this.denyPosts,this.denyComments,this.notes});
    OrganizationMember.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        id = json['id'];
        organizationId = json['organizationId'];
        userId = json['userId'];
        userName = json['userName'];
        isOwner = json['isOwner'];
        isModerator = json['isModerator'];
        denyAll = json['denyAll'];
        denyPosts = json['denyPosts'];
        denyComments = json['denyComments'];
        notes = json['notes'];
        return this;
    }

    Map<String, dynamic> toJson() => {
        'id': id,
        'organizationId': organizationId,
        'userId': userId,
        'userName': userName,
        'isOwner': isOwner,
        'isModerator': isModerator,
        'denyAll': denyAll,
        'denyPosts': denyPosts,
        'denyComments': denyComments,
        'notes': notes
    };

    TypeContext context = _ctx;
}

class OrganizationMemberInvite implements IConvertible
{
    int id;
    int organizationId;
    int userId;
    String userName;
    DateTime dismissed;

    OrganizationMemberInvite({this.id,this.organizationId,this.userId,this.userName,this.dismissed});
    OrganizationMemberInvite.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        id = json['id'];
        organizationId = json['organizationId'];
        userId = json['userId'];
        userName = json['userName'];
        dismissed = JsonConverters.fromJson(json['dismissed'],'DateTime',context);
        return this;
    }

    Map<String, dynamic> toJson() => {
        'id': id,
        'organizationId': organizationId,
        'userId': userId,
        'userName': userName,
        'dismissed': JsonConverters.toJson(dismissed,'DateTime',context)
    };

    TypeContext context = _ctx;
}

enum FlagType
{
    Violation,
    Spam,
    Abusive,
    Confidential,
    OffTopic,
    Other,
}

class PostReport implements IConvertible
{
    int id;
    int organizationId;
    int postId;
    int userId;
    String userName;
    FlagType flagType;
    String reportNotes;
    DateTime created;
    DateTime acknowledged;
    String acknowledgedBy;
    DateTime dismissed;
    String dismissedBy;

    PostReport({this.id,this.organizationId,this.postId,this.userId,this.userName,this.flagType,this.reportNotes,this.created,this.acknowledged,this.acknowledgedBy,this.dismissed,this.dismissedBy});
    PostReport.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        id = json['id'];
        organizationId = json['organizationId'];
        postId = json['postId'];
        userId = json['userId'];
        userName = json['userName'];
        flagType = JsonConverters.fromJson(json['flagType'],'FlagType',context);
        reportNotes = json['reportNotes'];
        created = JsonConverters.fromJson(json['created'],'DateTime',context);
        acknowledged = JsonConverters.fromJson(json['acknowledged'],'DateTime',context);
        acknowledgedBy = json['acknowledgedBy'];
        dismissed = JsonConverters.fromJson(json['dismissed'],'DateTime',context);
        dismissedBy = json['dismissedBy'];
        return this;
    }

    Map<String, dynamic> toJson() => {
        'id': id,
        'organizationId': organizationId,
        'postId': postId,
        'userId': userId,
        'userName': userName,
        'flagType': JsonConverters.toJson(flagType,'FlagType',context),
        'reportNotes': reportNotes,
        'created': JsonConverters.toJson(created,'DateTime',context),
        'acknowledged': JsonConverters.toJson(acknowledged,'DateTime',context),
        'acknowledgedBy': acknowledgedBy,
        'dismissed': JsonConverters.toJson(dismissed,'DateTime',context),
        'dismissedBy': dismissedBy
    };

    TypeContext context = _ctx;
}

class PostReportInfo extends PostReport implements IConvertible
{
    String title;
    int reportCount;
    String createdBy;

    PostReportInfo({this.title,this.reportCount,this.createdBy});
    PostReportInfo.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        super.fromMap(json);
        title = json['title'];
        reportCount = json['reportCount'];
        createdBy = json['createdBy'];
        return this;
    }

    Map<String, dynamic> toJson() => super.toJson()..addAll({
        'title': title,
        'reportCount': reportCount,
        'createdBy': createdBy
    });

    TypeContext context = _ctx;
}

class PostCommentReport implements IConvertible
{
    int id;
    int organizationId;
    int postId;
    int postCommentId;
    int userId;
    String userName;
    FlagType flagType;
    String reportNotes;
    DateTime created;
    DateTime acknowledged;
    String acknowledgedBy;
    DateTime dismissed;
    String dismissedBy;

    PostCommentReport({this.id,this.organizationId,this.postId,this.postCommentId,this.userId,this.userName,this.flagType,this.reportNotes,this.created,this.acknowledged,this.acknowledgedBy,this.dismissed,this.dismissedBy});
    PostCommentReport.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        id = json['id'];
        organizationId = json['organizationId'];
        postId = json['postId'];
        postCommentId = json['postCommentId'];
        userId = json['userId'];
        userName = json['userName'];
        flagType = JsonConverters.fromJson(json['flagType'],'FlagType',context);
        reportNotes = json['reportNotes'];
        created = JsonConverters.fromJson(json['created'],'DateTime',context);
        acknowledged = JsonConverters.fromJson(json['acknowledged'],'DateTime',context);
        acknowledgedBy = json['acknowledgedBy'];
        dismissed = JsonConverters.fromJson(json['dismissed'],'DateTime',context);
        dismissedBy = json['dismissedBy'];
        return this;
    }

    Map<String, dynamic> toJson() => {
        'id': id,
        'organizationId': organizationId,
        'postId': postId,
        'postCommentId': postCommentId,
        'userId': userId,
        'userName': userName,
        'flagType': JsonConverters.toJson(flagType,'FlagType',context),
        'reportNotes': reportNotes,
        'created': JsonConverters.toJson(created,'DateTime',context),
        'acknowledged': JsonConverters.toJson(acknowledged,'DateTime',context),
        'acknowledgedBy': acknowledgedBy,
        'dismissed': JsonConverters.toJson(dismissed,'DateTime',context),
        'dismissedBy': dismissedBy
    };

    TypeContext context = _ctx;
}

class PostCommentReportInfo extends PostCommentReport implements IConvertible
{
    String contentHtml;
    int reportCount;
    String createdBy;

    PostCommentReportInfo({this.contentHtml,this.reportCount,this.createdBy});
    PostCommentReportInfo.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        super.fromMap(json);
        contentHtml = json['contentHtml'];
        reportCount = json['reportCount'];
        createdBy = json['createdBy'];
        return this;
    }

    Map<String, dynamic> toJson() => super.toJson()..addAll({
        'contentHtml': contentHtml,
        'reportCount': reportCount,
        'createdBy': createdBy
    });

    TypeContext context = _ctx;
}

class PostComment implements IConvertible
{
    int id;
    int postId;
    int userId;
    int replyId;
    // @StringLength(2147483647)
    String content;

    // @StringLength(2147483647)
    String contentHtml;

    int score;
    int rank;
    int upVotes;
    int downVotes;
    int favorites;
    int wordCount;
    int reportCount;
    DateTime deleted;
    DateTime hidden;
    DateTime modified;
    DateTime created;
    String createdBy;
    int refId;
    String refSource;
    String refUrn;

    PostComment({this.id,this.postId,this.userId,this.replyId,this.content,this.contentHtml,this.score,this.rank,this.upVotes,this.downVotes,this.favorites,this.wordCount,this.reportCount,this.deleted,this.hidden,this.modified,this.created,this.createdBy,this.refId,this.refSource,this.refUrn});
    PostComment.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        id = json['id'];
        postId = json['postId'];
        userId = json['userId'];
        replyId = json['replyId'];
        content = json['content'];
        contentHtml = json['contentHtml'];
        score = json['score'];
        rank = json['rank'];
        upVotes = json['upVotes'];
        downVotes = json['downVotes'];
        favorites = json['favorites'];
        wordCount = json['wordCount'];
        reportCount = json['reportCount'];
        deleted = JsonConverters.fromJson(json['deleted'],'DateTime',context);
        hidden = JsonConverters.fromJson(json['hidden'],'DateTime',context);
        modified = JsonConverters.fromJson(json['modified'],'DateTime',context);
        created = JsonConverters.fromJson(json['created'],'DateTime',context);
        createdBy = json['createdBy'];
        refId = json['refId'];
        refSource = json['refSource'];
        refUrn = json['refUrn'];
        return this;
    }

    Map<String, dynamic> toJson() => {
        'id': id,
        'postId': postId,
        'userId': userId,
        'replyId': replyId,
        'content': content,
        'contentHtml': contentHtml,
        'score': score,
        'rank': rank,
        'upVotes': upVotes,
        'downVotes': downVotes,
        'favorites': favorites,
        'wordCount': wordCount,
        'reportCount': reportCount,
        'deleted': JsonConverters.toJson(deleted,'DateTime',context),
        'hidden': JsonConverters.toJson(hidden,'DateTime',context),
        'modified': JsonConverters.toJson(modified,'DateTime',context),
        'created': JsonConverters.toJson(created,'DateTime',context),
        'createdBy': createdBy,
        'refId': refId,
        'refSource': refSource,
        'refUrn': refUrn
    };

    TypeContext context = _ctx;
}

enum ReportAction
{
    Dismiss,
    Delete,
}

class UserRef implements IConvertible
{
    int id;
    String userName;
    String email;
    int refId;
    String refSource;
    String refUrn;

    UserRef({this.id,this.userName,this.email,this.refId,this.refSource,this.refUrn});
    UserRef.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        id = json['id'];
        userName = json['userName'];
        email = json['email'];
        refId = json['refId'];
        refSource = json['refSource'];
        refUrn = json['refUrn'];
        return this;
    }

    Map<String, dynamic> toJson() => {
        'id': id,
        'userName': userName,
        'email': email,
        'refId': refId,
        'refSource': refSource,
        'refUrn': refUrn
    };

    TypeContext context = _ctx;
}

class OrganizationSubscription implements IConvertible
{
    int id;
    int organizationId;
    int userId;
    String userName;
    List<String> postTypes;
    int frequencyDays;
    int lastSyncedId;
    DateTime lastSynced;
    DateTime created;

    OrganizationSubscription({this.id,this.organizationId,this.userId,this.userName,this.postTypes,this.frequencyDays,this.lastSyncedId,this.lastSynced,this.created});
    OrganizationSubscription.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        id = json['id'];
        organizationId = json['organizationId'];
        userId = json['userId'];
        userName = json['userName'];
        postTypes = JsonConverters.fromJson(json['postTypes'],'List<String>',context);
        frequencyDays = json['frequencyDays'];
        lastSyncedId = json['lastSyncedId'];
        lastSynced = JsonConverters.fromJson(json['lastSynced'],'DateTime',context);
        created = JsonConverters.fromJson(json['created'],'DateTime',context);
        return this;
    }

    Map<String, dynamic> toJson() => {
        'id': id,
        'organizationId': organizationId,
        'userId': userId,
        'userName': userName,
        'postTypes': JsonConverters.toJson(postTypes,'List<String>',context),
        'frequencyDays': frequencyDays,
        'lastSyncedId': lastSyncedId,
        'lastSynced': JsonConverters.toJson(lastSynced,'DateTime',context),
        'created': JsonConverters.toJson(created,'DateTime',context)
    };

    TypeContext context = _ctx;
}

abstract class TechnologyStackBase
{
    int id;
    String name;
    String vendorName;
    String description;
    String appUrl;
    String screenshotUrl;
    DateTime created;
    String createdBy;
    DateTime lastModified;
    String lastModifiedBy;
    bool isLocked;
    String ownerId;
    String slug;
    // @StringLength(2147483647)
    String details;

    // @StringLength(2147483647)
    String detailsHtml;

    DateTime lastStatusUpdate;
    int organizationId;
    int commentsPostId;
    int viewCount;
    int favCount;

    TechnologyStackBase({this.id,this.name,this.vendorName,this.description,this.appUrl,this.screenshotUrl,this.created,this.createdBy,this.lastModified,this.lastModifiedBy,this.isLocked,this.ownerId,this.slug,this.details,this.detailsHtml,this.lastStatusUpdate,this.organizationId,this.commentsPostId,this.viewCount,this.favCount});
    TechnologyStackBase.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        id = json['id'];
        name = json['name'];
        vendorName = json['vendorName'];
        description = json['description'];
        appUrl = json['appUrl'];
        screenshotUrl = json['screenshotUrl'];
        created = JsonConverters.fromJson(json['created'],'DateTime',context);
        createdBy = json['createdBy'];
        lastModified = JsonConverters.fromJson(json['lastModified'],'DateTime',context);
        lastModifiedBy = json['lastModifiedBy'];
        isLocked = json['isLocked'];
        ownerId = json['ownerId'];
        slug = json['slug'];
        details = json['details'];
        detailsHtml = json['detailsHtml'];
        lastStatusUpdate = JsonConverters.fromJson(json['lastStatusUpdate'],'DateTime',context);
        organizationId = json['organizationId'];
        commentsPostId = json['commentsPostId'];
        viewCount = json['viewCount'];
        favCount = json['favCount'];
        return this;
    }

    Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'vendorName': vendorName,
        'description': description,
        'appUrl': appUrl,
        'screenshotUrl': screenshotUrl,
        'created': JsonConverters.toJson(created,'DateTime',context),
        'createdBy': createdBy,
        'lastModified': JsonConverters.toJson(lastModified,'DateTime',context),
        'lastModifiedBy': lastModifiedBy,
        'isLocked': isLocked,
        'ownerId': ownerId,
        'slug': slug,
        'details': details,
        'detailsHtml': detailsHtml,
        'lastStatusUpdate': JsonConverters.toJson(lastStatusUpdate,'DateTime',context),
        'organizationId': organizationId,
        'commentsPostId': commentsPostId,
        'viewCount': viewCount,
        'favCount': favCount
    };

    TypeContext context = _ctx;
}

class TechnologyStack extends TechnologyStackBase implements IConvertible
{
    TechnologyStack();
    TechnologyStack.fromJson(Map<String, dynamic> json) : super.fromJson(json);
    fromMap(Map<String, dynamic> json) {
        super.fromMap(json);
        return this;
    }

    Map<String, dynamic> toJson() => super.toJson();
    TypeContext context = _ctx;
}

enum TechnologyTier
{
    ProgrammingLanguage,
    Client,
    Http,
    Server,
    Data,
    SoftwareInfrastructure,
    OperatingSystem,
    HardwareInfrastructure,
    ThirdPartyServices,
}

abstract class TechnologyBase
{
    int id;
    String name;
    String vendorName;
    String vendorUrl;
    String productUrl;
    String logoUrl;
    String description;
    DateTime created;
    String createdBy;
    DateTime lastModified;
    String lastModifiedBy;
    String ownerId;
    String slug;
    bool logoApproved;
    bool isLocked;
    TechnologyTier tier;
    DateTime lastStatusUpdate;
    int organizationId;
    int commentsPostId;
    int viewCount;
    int favCount;

    TechnologyBase({this.id,this.name,this.vendorName,this.vendorUrl,this.productUrl,this.logoUrl,this.description,this.created,this.createdBy,this.lastModified,this.lastModifiedBy,this.ownerId,this.slug,this.logoApproved,this.isLocked,this.tier,this.lastStatusUpdate,this.organizationId,this.commentsPostId,this.viewCount,this.favCount});
    TechnologyBase.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        id = json['id'];
        name = json['name'];
        vendorName = json['vendorName'];
        vendorUrl = json['vendorUrl'];
        productUrl = json['productUrl'];
        logoUrl = json['logoUrl'];
        description = json['description'];
        created = JsonConverters.fromJson(json['created'],'DateTime',context);
        createdBy = json['createdBy'];
        lastModified = JsonConverters.fromJson(json['lastModified'],'DateTime',context);
        lastModifiedBy = json['lastModifiedBy'];
        ownerId = json['ownerId'];
        slug = json['slug'];
        logoApproved = json['logoApproved'];
        isLocked = json['isLocked'];
        tier = JsonConverters.fromJson(json['tier'],'TechnologyTier',context);
        lastStatusUpdate = JsonConverters.fromJson(json['lastStatusUpdate'],'DateTime',context);
        organizationId = json['organizationId'];
        commentsPostId = json['commentsPostId'];
        viewCount = json['viewCount'];
        favCount = json['favCount'];
        return this;
    }

    Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'vendorName': vendorName,
        'vendorUrl': vendorUrl,
        'productUrl': productUrl,
        'logoUrl': logoUrl,
        'description': description,
        'created': JsonConverters.toJson(created,'DateTime',context),
        'createdBy': createdBy,
        'lastModified': JsonConverters.toJson(lastModified,'DateTime',context),
        'lastModifiedBy': lastModifiedBy,
        'ownerId': ownerId,
        'slug': slug,
        'logoApproved': logoApproved,
        'isLocked': isLocked,
        'tier': JsonConverters.toJson(tier,'TechnologyTier',context),
        'lastStatusUpdate': JsonConverters.toJson(lastStatusUpdate,'DateTime',context),
        'organizationId': organizationId,
        'commentsPostId': commentsPostId,
        'viewCount': viewCount,
        'favCount': favCount
    };

    TypeContext context = _ctx;
}

class Technology extends TechnologyBase implements IConvertible
{
    Technology();
    Technology.fromJson(Map<String, dynamic> json) : super.fromJson(json);
    fromMap(Map<String, dynamic> json) {
        super.fromMap(json);
        return this;
    }

    Map<String, dynamic> toJson() => super.toJson();
    TypeContext context = _ctx;
}

class UserActivity implements IConvertible
{
    int id;
    String userName;
    int karma;
    int technologyCount;
    int techStacksCount;
    int postsCount;
    int postUpVotes;
    int postDownVotes;
    int commentUpVotes;
    int commentDownVotes;
    int postCommentsCount;
    int pinnedCommentCount;
    int postReportCount;
    int postCommentReportCount;
    DateTime created;
    DateTime modified;

    UserActivity({this.id,this.userName,this.karma,this.technologyCount,this.techStacksCount,this.postsCount,this.postUpVotes,this.postDownVotes,this.commentUpVotes,this.commentDownVotes,this.postCommentsCount,this.pinnedCommentCount,this.postReportCount,this.postCommentReportCount,this.created,this.modified});
    UserActivity.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        id = json['id'];
        userName = json['userName'];
        karma = json['karma'];
        technologyCount = json['technologyCount'];
        techStacksCount = json['techStacksCount'];
        postsCount = json['postsCount'];
        postUpVotes = json['postUpVotes'];
        postDownVotes = json['postDownVotes'];
        commentUpVotes = json['commentUpVotes'];
        commentDownVotes = json['commentDownVotes'];
        postCommentsCount = json['postCommentsCount'];
        pinnedCommentCount = json['pinnedCommentCount'];
        postReportCount = json['postReportCount'];
        postCommentReportCount = json['postCommentReportCount'];
        created = JsonConverters.fromJson(json['created'],'DateTime',context);
        modified = JsonConverters.fromJson(json['modified'],'DateTime',context);
        return this;
    }

    Map<String, dynamic> toJson() => {
        'id': id,
        'userName': userName,
        'karma': karma,
        'technologyCount': technologyCount,
        'techStacksCount': techStacksCount,
        'postsCount': postsCount,
        'postUpVotes': postUpVotes,
        'postDownVotes': postDownVotes,
        'commentUpVotes': commentUpVotes,
        'commentDownVotes': commentDownVotes,
        'postCommentsCount': postCommentsCount,
        'pinnedCommentCount': pinnedCommentCount,
        'postReportCount': postReportCount,
        'postCommentReportCount': postCommentReportCount,
        'created': JsonConverters.toJson(created,'DateTime',context),
        'modified': JsonConverters.toJson(modified,'DateTime',context)
    };

    TypeContext context = _ctx;
}

enum Frequency
{
    Daily,
    Weekly,
    Monthly,
    Quarterly,
}

class TechnologyHistory extends TechnologyBase implements IConvertible
{
    int technologyId;
    String operation;

    TechnologyHistory({this.technologyId,this.operation});
    TechnologyHistory.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        super.fromMap(json);
        technologyId = json['technologyId'];
        operation = json['operation'];
        return this;
    }

    Map<String, dynamic> toJson() => super.toJson()..addAll({
        'technologyId': technologyId,
        'operation': operation
    });

    TypeContext context = _ctx;
}

abstract class IRegisterStats
{
}

class TechnologyStackHistory extends TechnologyStackBase implements IConvertible
{
    int technologyStackId;
    String operation;
    List<int> technologyIds;

    TechnologyStackHistory({this.technologyStackId,this.operation,this.technologyIds});
    TechnologyStackHistory.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        super.fromMap(json);
        technologyStackId = json['technologyStackId'];
        operation = json['operation'];
        technologyIds = JsonConverters.fromJson(json['technologyIds'],'List<int>',context);
        return this;
    }

    Map<String, dynamic> toJson() => super.toJson()..addAll({
        'technologyStackId': technologyStackId,
        'operation': operation,
        'technologyIds': JsonConverters.toJson(technologyIds,'List<int>',context)
    });

    TypeContext context = _ctx;
}

class UserInfo implements IConvertible
{
    String userName;
    String avatarUrl;
    int stacksCount;

    UserInfo({this.userName,this.avatarUrl,this.stacksCount});
    UserInfo.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        userName = json['userName'];
        avatarUrl = json['avatarUrl'];
        stacksCount = json['stacksCount'];
        return this;
    }

    Map<String, dynamic> toJson() => {
        'userName': userName,
        'avatarUrl': avatarUrl,
        'stacksCount': stacksCount
    };

    TypeContext context = _ctx;
}

class TechnologyInfo implements IConvertible
{
    TechnologyTier tier;
    String slug;
    String name;
    String logoUrl;
    int stacksCount;

    TechnologyInfo({this.tier,this.slug,this.name,this.logoUrl,this.stacksCount});
    TechnologyInfo.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        tier = JsonConverters.fromJson(json['tier'],'TechnologyTier',context);
        slug = json['slug'];
        name = json['name'];
        logoUrl = json['logoUrl'];
        stacksCount = json['stacksCount'];
        return this;
    }

    Map<String, dynamic> toJson() => {
        'tier': JsonConverters.toJson(tier,'TechnologyTier',context),
        'slug': slug,
        'name': name,
        'logoUrl': logoUrl,
        'stacksCount': stacksCount
    };

    TypeContext context = _ctx;
}

class TechnologyInStack extends TechnologyBase implements IConvertible
{
    int technologyId;
    int technologyStackId;
    String justification;

    TechnologyInStack({this.technologyId,this.technologyStackId,this.justification});
    TechnologyInStack.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        super.fromMap(json);
        technologyId = json['technologyId'];
        technologyStackId = json['technologyStackId'];
        justification = json['justification'];
        return this;
    }

    Map<String, dynamic> toJson() => super.toJson()..addAll({
        'technologyId': technologyId,
        'technologyStackId': technologyStackId,
        'justification': justification
    });

    TypeContext context = _ctx;
}

class TechStackDetails extends TechnologyStackBase implements IConvertible
{
    List<TechnologyInStack> technologyChoices;

    TechStackDetails({this.technologyChoices});
    TechStackDetails.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        super.fromMap(json);
        technologyChoices = JsonConverters.fromJson(json['technologyChoices'],'List<TechnologyInStack>',context);
        return this;
    }

    Map<String, dynamic> toJson() => super.toJson()..addAll({
        'technologyChoices': JsonConverters.toJson(technologyChoices,'List<TechnologyInStack>',context)
    });

    TypeContext context = _ctx;
}

class LabelInfo implements IConvertible
{
    String slug;
    String color;

    LabelInfo({this.slug,this.color});
    LabelInfo.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        slug = json['slug'];
        color = json['color'];
        return this;
    }

    Map<String, dynamic> toJson() => {
        'slug': slug,
        'color': color
    };

    TypeContext context = _ctx;
}

class CategoryInfo implements IConvertible
{
    int id;
    String name;
    String slug;

    CategoryInfo({this.id,this.name,this.slug});
    CategoryInfo.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        id = json['id'];
        name = json['name'];
        slug = json['slug'];
        return this;
    }

    Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'slug': slug
    };

    TypeContext context = _ctx;
}

class OrganizationInfo implements IConvertible
{
    int id;
    String name;
    String slug;
    int refId;
    String refSource;
    int upVotes;
    int downVotes;
    int membersCount;
    int rank;
    bool disableInvites;
    String lang;
    List<String> postTypes;
    List<String> moderatorPostTypes;
    DateTime locked;
    List<LabelInfo> labels;
    List<CategoryInfo> categories;

    OrganizationInfo({this.id,this.name,this.slug,this.refId,this.refSource,this.upVotes,this.downVotes,this.membersCount,this.rank,this.disableInvites,this.lang,this.postTypes,this.moderatorPostTypes,this.locked,this.labels,this.categories});
    OrganizationInfo.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        id = json['id'];
        name = json['name'];
        slug = json['slug'];
        refId = json['refId'];
        refSource = json['refSource'];
        upVotes = json['upVotes'];
        downVotes = json['downVotes'];
        membersCount = json['membersCount'];
        rank = json['rank'];
        disableInvites = json['disableInvites'];
        lang = json['lang'];
        postTypes = JsonConverters.fromJson(json['postTypes'],'List<String>',context);
        moderatorPostTypes = JsonConverters.fromJson(json['moderatorPostTypes'],'List<String>',context);
        locked = JsonConverters.fromJson(json['locked'],'DateTime',context);
        labels = JsonConverters.fromJson(json['labels'],'List<LabelInfo>',context);
        categories = JsonConverters.fromJson(json['categories'],'List<CategoryInfo>',context);
        return this;
    }

    Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'slug': slug,
        'refId': refId,
        'refSource': refSource,
        'upVotes': upVotes,
        'downVotes': downVotes,
        'membersCount': membersCount,
        'rank': rank,
        'disableInvites': disableInvites,
        'lang': lang,
        'postTypes': JsonConverters.toJson(postTypes,'List<String>',context),
        'moderatorPostTypes': JsonConverters.toJson(moderatorPostTypes,'List<String>',context),
        'locked': JsonConverters.toJson(locked,'DateTime',context),
        'labels': JsonConverters.toJson(labels,'List<LabelInfo>',context),
        'categories': JsonConverters.toJson(categories,'List<CategoryInfo>',context)
    };

    TypeContext context = _ctx;
}

// @DataContract
class Option implements IConvertible
{
    // @DataMember(Name="name")
    String name;

    // @DataMember(Name="title")
    String title;

    // @DataMember(Name="value")
    TechnologyTier value;

    Option({this.name,this.title,this.value});
    Option.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        name = json['name'];
        title = json['title'];
        value = JsonConverters.fromJson(json['value'],'TechnologyTier',context);
        return this;
    }

    Map<String, dynamic> toJson() => {
        'name': name,
        'title': title,
        'value': JsonConverters.toJson(value,'TechnologyTier',context)
    };

    TypeContext context = _ctx;
}

class UserVoiceUser implements IConvertible
{
    int id;
    String name;
    String email;
    String avatarUrl;
    DateTime createdAt;
    DateTime updatedAt;

    UserVoiceUser({this.id,this.name,this.email,this.avatarUrl,this.createdAt,this.updatedAt});
    UserVoiceUser.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        id = json['id'];
        name = json['name'];
        email = json['email'];
        avatarUrl = json['avatarUrl'];
        createdAt = JsonConverters.fromJson(json['createdAt'],'DateTime',context);
        updatedAt = JsonConverters.fromJson(json['updatedAt'],'DateTime',context);
        return this;
    }

    Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'email': email,
        'avatarUrl': avatarUrl,
        'createdAt': JsonConverters.toJson(createdAt,'DateTime',context),
        'updatedAt': JsonConverters.toJson(updatedAt,'DateTime',context)
    };

    TypeContext context = _ctx;
}

class UserVoiceComment implements IConvertible
{
    String text;
    String formattedText;
    DateTime createdAt;
    UserVoiceUser creator;

    UserVoiceComment({this.text,this.formattedText,this.createdAt,this.creator});
    UserVoiceComment.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        text = json['text'];
        formattedText = json['formattedText'];
        createdAt = JsonConverters.fromJson(json['createdAt'],'DateTime',context);
        creator = JsonConverters.fromJson(json['creator'],'UserVoiceUser',context);
        return this;
    }

    Map<String, dynamic> toJson() => {
        'text': text,
        'formattedText': formattedText,
        'createdAt': JsonConverters.toJson(createdAt,'DateTime',context),
        'creator': JsonConverters.toJson(creator,'UserVoiceUser',context)
    };

    TypeContext context = _ctx;
}

class GetOrganizationResponse implements IConvertible
{
    int cache;
    int id;
    String slug;
    Organization organization;
    List<OrganizationLabel> labels;
    List<Category> categories;
    List<OrganizationMember> owners;
    List<OrganizationMember> moderators;
    int membersCount;
    ResponseStatus responseStatus;

    GetOrganizationResponse({this.cache,this.id,this.slug,this.organization,this.labels,this.categories,this.owners,this.moderators,this.membersCount,this.responseStatus});
    GetOrganizationResponse.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        cache = json['cache'];
        id = json['id'];
        slug = json['slug'];
        organization = JsonConverters.fromJson(json['organization'],'Organization',context);
        labels = JsonConverters.fromJson(json['labels'],'List<OrganizationLabel>',context);
        categories = JsonConverters.fromJson(json['categories'],'List<Category>',context);
        owners = JsonConverters.fromJson(json['owners'],'List<OrganizationMember>',context);
        moderators = JsonConverters.fromJson(json['moderators'],'List<OrganizationMember>',context);
        membersCount = json['membersCount'];
        responseStatus = JsonConverters.fromJson(json['responseStatus'],'ResponseStatus',context);
        return this;
    }

    Map<String, dynamic> toJson() => {
        'cache': cache,
        'id': id,
        'slug': slug,
        'organization': JsonConverters.toJson(organization,'Organization',context),
        'labels': JsonConverters.toJson(labels,'List<OrganizationLabel>',context),
        'categories': JsonConverters.toJson(categories,'List<Category>',context),
        'owners': JsonConverters.toJson(owners,'List<OrganizationMember>',context),
        'moderators': JsonConverters.toJson(moderators,'List<OrganizationMember>',context),
        'membersCount': membersCount,
        'responseStatus': JsonConverters.toJson(responseStatus,'ResponseStatus',context)
    };

    TypeContext context = _ctx;
}

class GetOrganizationMembersResponse implements IConvertible
{
    int organizationId;
    List<OrganizationMember> results;
    ResponseStatus responseStatus;

    GetOrganizationMembersResponse({this.organizationId,this.results,this.responseStatus});
    GetOrganizationMembersResponse.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        organizationId = json['organizationId'];
        results = JsonConverters.fromJson(json['results'],'List<OrganizationMember>',context);
        responseStatus = JsonConverters.fromJson(json['responseStatus'],'ResponseStatus',context);
        return this;
    }

    Map<String, dynamic> toJson() => {
        'organizationId': organizationId,
        'results': JsonConverters.toJson(results,'List<OrganizationMember>',context),
        'responseStatus': JsonConverters.toJson(responseStatus,'ResponseStatus',context)
    };

    TypeContext context = _ctx;
}

class GetOrganizationAdminResponse implements IConvertible
{
    List<OrganizationLabel> labels;
    List<OrganizationMember> members;
    List<OrganizationMemberInvite> memberInvites;
    List<PostReportInfo> reportedPosts;
    List<PostCommentReportInfo> reportedPostComments;
    ResponseStatus responseStatus;

    GetOrganizationAdminResponse({this.labels,this.members,this.memberInvites,this.reportedPosts,this.reportedPostComments,this.responseStatus});
    GetOrganizationAdminResponse.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        labels = JsonConverters.fromJson(json['labels'],'List<OrganizationLabel>',context);
        members = JsonConverters.fromJson(json['members'],'List<OrganizationMember>',context);
        memberInvites = JsonConverters.fromJson(json['memberInvites'],'List<OrganizationMemberInvite>',context);
        reportedPosts = JsonConverters.fromJson(json['reportedPosts'],'List<PostReportInfo>',context);
        reportedPostComments = JsonConverters.fromJson(json['reportedPostComments'],'List<PostCommentReportInfo>',context);
        responseStatus = JsonConverters.fromJson(json['responseStatus'],'ResponseStatus',context);
        return this;
    }

    Map<String, dynamic> toJson() => {
        'labels': JsonConverters.toJson(labels,'List<OrganizationLabel>',context),
        'members': JsonConverters.toJson(members,'List<OrganizationMember>',context),
        'memberInvites': JsonConverters.toJson(memberInvites,'List<OrganizationMemberInvite>',context),
        'reportedPosts': JsonConverters.toJson(reportedPosts,'List<PostReportInfo>',context),
        'reportedPostComments': JsonConverters.toJson(reportedPostComments,'List<PostCommentReportInfo>',context),
        'responseStatus': JsonConverters.toJson(responseStatus,'ResponseStatus',context)
    };

    TypeContext context = _ctx;
}

class CreateOrganizationForTechnologyResponse implements IConvertible
{
    int organizationId;
    String organizationSlug;
    int commentsPostId;
    String commentsPostSlug;
    ResponseStatus responseStatus;

    CreateOrganizationForTechnologyResponse({this.organizationId,this.organizationSlug,this.commentsPostId,this.commentsPostSlug,this.responseStatus});
    CreateOrganizationForTechnologyResponse.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        organizationId = json['organizationId'];
        organizationSlug = json['organizationSlug'];
        commentsPostId = json['commentsPostId'];
        commentsPostSlug = json['commentsPostSlug'];
        responseStatus = JsonConverters.fromJson(json['responseStatus'],'ResponseStatus',context);
        return this;
    }

    Map<String, dynamic> toJson() => {
        'organizationId': organizationId,
        'organizationSlug': organizationSlug,
        'commentsPostId': commentsPostId,
        'commentsPostSlug': commentsPostSlug,
        'responseStatus': JsonConverters.toJson(responseStatus,'ResponseStatus',context)
    };

    TypeContext context = _ctx;
}

class CreateOrganizationResponse implements IConvertible
{
    int id;
    String slug;
    ResponseStatus responseStatus;

    CreateOrganizationResponse({this.id,this.slug,this.responseStatus});
    CreateOrganizationResponse.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        id = json['id'];
        slug = json['slug'];
        responseStatus = JsonConverters.fromJson(json['responseStatus'],'ResponseStatus',context);
        return this;
    }

    Map<String, dynamic> toJson() => {
        'id': id,
        'slug': slug,
        'responseStatus': JsonConverters.toJson(responseStatus,'ResponseStatus',context)
    };

    TypeContext context = _ctx;
}

class UpdateOrganizationResponse implements IConvertible
{
    ResponseStatus responseStatus;

    UpdateOrganizationResponse({this.responseStatus});
    UpdateOrganizationResponse.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        responseStatus = JsonConverters.fromJson(json['responseStatus'],'ResponseStatus',context);
        return this;
    }

    Map<String, dynamic> toJson() => {
        'responseStatus': JsonConverters.toJson(responseStatus,'ResponseStatus',context)
    };

    TypeContext context = _ctx;
}

class OrganizationLabelResponse implements IConvertible
{
    ResponseStatus responseStatus;

    OrganizationLabelResponse({this.responseStatus});
    OrganizationLabelResponse.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        responseStatus = JsonConverters.fromJson(json['responseStatus'],'ResponseStatus',context);
        return this;
    }

    Map<String, dynamic> toJson() => {
        'responseStatus': JsonConverters.toJson(responseStatus,'ResponseStatus',context)
    };

    TypeContext context = _ctx;
}

class AddCategoryResponse implements IConvertible
{
    int id;
    String slug;
    ResponseStatus responseStatus;

    AddCategoryResponse({this.id,this.slug,this.responseStatus});
    AddCategoryResponse.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        id = json['id'];
        slug = json['slug'];
        responseStatus = JsonConverters.fromJson(json['responseStatus'],'ResponseStatus',context);
        return this;
    }

    Map<String, dynamic> toJson() => {
        'id': id,
        'slug': slug,
        'responseStatus': JsonConverters.toJson(responseStatus,'ResponseStatus',context)
    };

    TypeContext context = _ctx;
}

class UpdateCategoryResponse implements IConvertible
{
    ResponseStatus responseStatus;

    UpdateCategoryResponse({this.responseStatus});
    UpdateCategoryResponse.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        responseStatus = JsonConverters.fromJson(json['responseStatus'],'ResponseStatus',context);
        return this;
    }

    Map<String, dynamic> toJson() => {
        'responseStatus': JsonConverters.toJson(responseStatus,'ResponseStatus',context)
    };

    TypeContext context = _ctx;
}

class AddOrganizationMemberResponse implements IConvertible
{
    ResponseStatus responseStatus;

    AddOrganizationMemberResponse({this.responseStatus});
    AddOrganizationMemberResponse.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        responseStatus = JsonConverters.fromJson(json['responseStatus'],'ResponseStatus',context);
        return this;
    }

    Map<String, dynamic> toJson() => {
        'responseStatus': JsonConverters.toJson(responseStatus,'ResponseStatus',context)
    };

    TypeContext context = _ctx;
}

class UpdateOrganizationMemberResponse implements IConvertible
{
    ResponseStatus responseStatus;

    UpdateOrganizationMemberResponse({this.responseStatus});
    UpdateOrganizationMemberResponse.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        responseStatus = JsonConverters.fromJson(json['responseStatus'],'ResponseStatus',context);
        return this;
    }

    Map<String, dynamic> toJson() => {
        'responseStatus': JsonConverters.toJson(responseStatus,'ResponseStatus',context)
    };

    TypeContext context = _ctx;
}

class SetOrganizationMembersResponse implements IConvertible
{
    List<int> userIdsAdded;
    List<int> userIdsRemoved;
    ResponseStatus responseStatus;

    SetOrganizationMembersResponse({this.userIdsAdded,this.userIdsRemoved,this.responseStatus});
    SetOrganizationMembersResponse.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        userIdsAdded = JsonConverters.fromJson(json['userIdsAdded'],'List<int>',context);
        userIdsRemoved = JsonConverters.fromJson(json['userIdsRemoved'],'List<int>',context);
        responseStatus = JsonConverters.fromJson(json['responseStatus'],'ResponseStatus',context);
        return this;
    }

    Map<String, dynamic> toJson() => {
        'userIdsAdded': JsonConverters.toJson(userIdsAdded,'List<int>',context),
        'userIdsRemoved': JsonConverters.toJson(userIdsRemoved,'List<int>',context),
        'responseStatus': JsonConverters.toJson(responseStatus,'ResponseStatus',context)
    };

    TypeContext context = _ctx;
}

class GetOrganizationMemberInvitesResponse implements IConvertible
{
    List<OrganizationMemberInvite> results;
    ResponseStatus responseStatus;

    GetOrganizationMemberInvitesResponse({this.results,this.responseStatus});
    GetOrganizationMemberInvitesResponse.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        results = JsonConverters.fromJson(json['results'],'List<OrganizationMemberInvite>',context);
        responseStatus = JsonConverters.fromJson(json['responseStatus'],'ResponseStatus',context);
        return this;
    }

    Map<String, dynamic> toJson() => {
        'results': JsonConverters.toJson(results,'List<OrganizationMemberInvite>',context),
        'responseStatus': JsonConverters.toJson(responseStatus,'ResponseStatus',context)
    };

    TypeContext context = _ctx;
}

class RequestOrganizationMemberInviteResponse implements IConvertible
{
    int organizationId;
    ResponseStatus responseStatus;

    RequestOrganizationMemberInviteResponse({this.organizationId,this.responseStatus});
    RequestOrganizationMemberInviteResponse.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        organizationId = json['organizationId'];
        responseStatus = JsonConverters.fromJson(json['responseStatus'],'ResponseStatus',context);
        return this;
    }

    Map<String, dynamic> toJson() => {
        'organizationId': organizationId,
        'responseStatus': JsonConverters.toJson(responseStatus,'ResponseStatus',context)
    };

    TypeContext context = _ctx;
}

class UpdateOrganizationMemberInviteResponse implements IConvertible
{
    ResponseStatus responseStatus;

    UpdateOrganizationMemberInviteResponse({this.responseStatus});
    UpdateOrganizationMemberInviteResponse.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        responseStatus = JsonConverters.fromJson(json['responseStatus'],'ResponseStatus',context);
        return this;
    }

    Map<String, dynamic> toJson() => {
        'responseStatus': JsonConverters.toJson(responseStatus,'ResponseStatus',context)
    };

    TypeContext context = _ctx;
}

class GetPostResponse implements IConvertible
{
    int cache;
    Post post;
    List<PostComment> comments;
    ResponseStatus responseStatus;

    GetPostResponse({this.cache,this.post,this.comments,this.responseStatus});
    GetPostResponse.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        cache = json['cache'];
        post = JsonConverters.fromJson(json['post'],'Post',context);
        comments = JsonConverters.fromJson(json['comments'],'List<PostComment>',context);
        responseStatus = JsonConverters.fromJson(json['responseStatus'],'ResponseStatus',context);
        return this;
    }

    Map<String, dynamic> toJson() => {
        'cache': cache,
        'post': JsonConverters.toJson(post,'Post',context),
        'comments': JsonConverters.toJson(comments,'List<PostComment>',context),
        'responseStatus': JsonConverters.toJson(responseStatus,'ResponseStatus',context)
    };

    TypeContext context = _ctx;
}

class CreatePostResponse implements IConvertible
{
    int id;
    String slug;
    ResponseStatus responseStatus;

    CreatePostResponse({this.id,this.slug,this.responseStatus});
    CreatePostResponse.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        id = json['id'];
        slug = json['slug'];
        responseStatus = JsonConverters.fromJson(json['responseStatus'],'ResponseStatus',context);
        return this;
    }

    Map<String, dynamic> toJson() => {
        'id': id,
        'slug': slug,
        'responseStatus': JsonConverters.toJson(responseStatus,'ResponseStatus',context)
    };

    TypeContext context = _ctx;
}

class UpdatePostResponse implements IConvertible
{
    ResponseStatus responseStatus;

    UpdatePostResponse({this.responseStatus});
    UpdatePostResponse.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        responseStatus = JsonConverters.fromJson(json['responseStatus'],'ResponseStatus',context);
        return this;
    }

    Map<String, dynamic> toJson() => {
        'responseStatus': JsonConverters.toJson(responseStatus,'ResponseStatus',context)
    };

    TypeContext context = _ctx;
}

class DeletePostResponse implements IConvertible
{
    int id;
    ResponseStatus responseStatus;

    DeletePostResponse({this.id,this.responseStatus});
    DeletePostResponse.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        id = json['id'];
        responseStatus = JsonConverters.fromJson(json['responseStatus'],'ResponseStatus',context);
        return this;
    }

    Map<String, dynamic> toJson() => {
        'id': id,
        'responseStatus': JsonConverters.toJson(responseStatus,'ResponseStatus',context)
    };

    TypeContext context = _ctx;
}

class CreatePostCommentResponse implements IConvertible
{
    int id;
    int postId;
    ResponseStatus responseStatus;

    CreatePostCommentResponse({this.id,this.postId,this.responseStatus});
    CreatePostCommentResponse.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        id = json['id'];
        postId = json['postId'];
        responseStatus = JsonConverters.fromJson(json['responseStatus'],'ResponseStatus',context);
        return this;
    }

    Map<String, dynamic> toJson() => {
        'id': id,
        'postId': postId,
        'responseStatus': JsonConverters.toJson(responseStatus,'ResponseStatus',context)
    };

    TypeContext context = _ctx;
}

class UpdatePostCommentResponse implements IConvertible
{
    ResponseStatus responseStatus;

    UpdatePostCommentResponse({this.responseStatus});
    UpdatePostCommentResponse.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        responseStatus = JsonConverters.fromJson(json['responseStatus'],'ResponseStatus',context);
        return this;
    }

    Map<String, dynamic> toJson() => {
        'responseStatus': JsonConverters.toJson(responseStatus,'ResponseStatus',context)
    };

    TypeContext context = _ctx;
}

class DeletePostCommentResponse implements IConvertible
{
    int id;
    int postId;
    ResponseStatus responseStatus;

    DeletePostCommentResponse({this.id,this.postId,this.responseStatus});
    DeletePostCommentResponse.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        id = json['id'];
        postId = json['postId'];
        responseStatus = JsonConverters.fromJson(json['responseStatus'],'ResponseStatus',context);
        return this;
    }

    Map<String, dynamic> toJson() => {
        'id': id,
        'postId': postId,
        'responseStatus': JsonConverters.toJson(responseStatus,'ResponseStatus',context)
    };

    TypeContext context = _ctx;
}

class GetUserPostCommentVotesResponse implements IConvertible
{
    int postId;
    List<int> upVotedCommentIds;
    List<int> downVotedCommentIds;

    GetUserPostCommentVotesResponse({this.postId,this.upVotedCommentIds,this.downVotedCommentIds});
    GetUserPostCommentVotesResponse.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        postId = json['postId'];
        upVotedCommentIds = JsonConverters.fromJson(json['upVotedCommentIds'],'List<int>',context);
        downVotedCommentIds = JsonConverters.fromJson(json['downVotedCommentIds'],'List<int>',context);
        return this;
    }

    Map<String, dynamic> toJson() => {
        'postId': postId,
        'upVotedCommentIds': JsonConverters.toJson(upVotedCommentIds,'List<int>',context),
        'downVotedCommentIds': JsonConverters.toJson(downVotedCommentIds,'List<int>',context)
    };

    TypeContext context = _ctx;
}

class PinPostCommentResponse implements IConvertible
{
    ResponseStatus responseStatus;

    PinPostCommentResponse({this.responseStatus});
    PinPostCommentResponse.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        responseStatus = JsonConverters.fromJson(json['responseStatus'],'ResponseStatus',context);
        return this;
    }

    Map<String, dynamic> toJson() => {
        'responseStatus': JsonConverters.toJson(responseStatus,'ResponseStatus',context)
    };

    TypeContext context = _ctx;
}

class GetUsersByEmailsResponse implements IConvertible
{
    List<UserRef> results;
    ResponseStatus responseStatus;

    GetUsersByEmailsResponse({this.results,this.responseStatus});
    GetUsersByEmailsResponse.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        results = JsonConverters.fromJson(json['results'],'List<UserRef>',context);
        responseStatus = JsonConverters.fromJson(json['responseStatus'],'ResponseStatus',context);
        return this;
    }

    Map<String, dynamic> toJson() => {
        'results': JsonConverters.toJson(results,'List<UserRef>',context),
        'responseStatus': JsonConverters.toJson(responseStatus,'ResponseStatus',context)
    };

    TypeContext context = _ctx;
}

class GetUserPostActivityResponse implements IConvertible
{
    List<int> upVotedPostIds;
    List<int> downVotedPostIds;
    List<int> favoritePostIds;
    ResponseStatus responseStatus;

    GetUserPostActivityResponse({this.upVotedPostIds,this.downVotedPostIds,this.favoritePostIds,this.responseStatus});
    GetUserPostActivityResponse.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        upVotedPostIds = JsonConverters.fromJson(json['upVotedPostIds'],'List<int>',context);
        downVotedPostIds = JsonConverters.fromJson(json['downVotedPostIds'],'List<int>',context);
        favoritePostIds = JsonConverters.fromJson(json['favoritePostIds'],'List<int>',context);
        responseStatus = JsonConverters.fromJson(json['responseStatus'],'ResponseStatus',context);
        return this;
    }

    Map<String, dynamic> toJson() => {
        'upVotedPostIds': JsonConverters.toJson(upVotedPostIds,'List<int>',context),
        'downVotedPostIds': JsonConverters.toJson(downVotedPostIds,'List<int>',context),
        'favoritePostIds': JsonConverters.toJson(favoritePostIds,'List<int>',context),
        'responseStatus': JsonConverters.toJson(responseStatus,'ResponseStatus',context)
    };

    TypeContext context = _ctx;
}

class GetUserOrganizationsResponse implements IConvertible
{
    List<OrganizationMember> members;
    List<OrganizationMemberInvite> memberInvites;
    List<OrganizationSubscription> subscriptions;

    GetUserOrganizationsResponse({this.members,this.memberInvites,this.subscriptions});
    GetUserOrganizationsResponse.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        members = JsonConverters.fromJson(json['members'],'List<OrganizationMember>',context);
        memberInvites = JsonConverters.fromJson(json['memberInvites'],'List<OrganizationMemberInvite>',context);
        subscriptions = JsonConverters.fromJson(json['subscriptions'],'List<OrganizationSubscription>',context);
        return this;
    }

    Map<String, dynamic> toJson() => {
        'members': JsonConverters.toJson(members,'List<OrganizationMember>',context),
        'memberInvites': JsonConverters.toJson(memberInvites,'List<OrganizationMemberInvite>',context),
        'subscriptions': JsonConverters.toJson(subscriptions,'List<OrganizationSubscription>',context)
    };

    TypeContext context = _ctx;
}

class UserPostVoteResponse implements IConvertible
{
    ResponseStatus responseStatus;

    UserPostVoteResponse({this.responseStatus});
    UserPostVoteResponse.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        responseStatus = JsonConverters.fromJson(json['responseStatus'],'ResponseStatus',context);
        return this;
    }

    Map<String, dynamic> toJson() => {
        'responseStatus': JsonConverters.toJson(responseStatus,'ResponseStatus',context)
    };

    TypeContext context = _ctx;
}

class UserPostFavoriteResponse implements IConvertible
{
    ResponseStatus responseStatus;

    UserPostFavoriteResponse({this.responseStatus});
    UserPostFavoriteResponse.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        responseStatus = JsonConverters.fromJson(json['responseStatus'],'ResponseStatus',context);
        return this;
    }

    Map<String, dynamic> toJson() => {
        'responseStatus': JsonConverters.toJson(responseStatus,'ResponseStatus',context)
    };

    TypeContext context = _ctx;
}

class UserPostReportResponse implements IConvertible
{
    ResponseStatus responseStatus;

    UserPostReportResponse({this.responseStatus});
    UserPostReportResponse.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        responseStatus = JsonConverters.fromJson(json['responseStatus'],'ResponseStatus',context);
        return this;
    }

    Map<String, dynamic> toJson() => {
        'responseStatus': JsonConverters.toJson(responseStatus,'ResponseStatus',context)
    };

    TypeContext context = _ctx;
}

class UserPostCommentVoteResponse implements IConvertible
{
    ResponseStatus responseStatus;

    UserPostCommentVoteResponse({this.responseStatus});
    UserPostCommentVoteResponse.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        responseStatus = JsonConverters.fromJson(json['responseStatus'],'ResponseStatus',context);
        return this;
    }

    Map<String, dynamic> toJson() => {
        'responseStatus': JsonConverters.toJson(responseStatus,'ResponseStatus',context)
    };

    TypeContext context = _ctx;
}

class UserPostCommentReportResponse implements IConvertible
{
    ResponseStatus responseStatus;

    UserPostCommentReportResponse({this.responseStatus});
    UserPostCommentReportResponse.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        responseStatus = JsonConverters.fromJson(json['responseStatus'],'ResponseStatus',context);
        return this;
    }

    Map<String, dynamic> toJson() => {
        'responseStatus': JsonConverters.toJson(responseStatus,'ResponseStatus',context)
    };

    TypeContext context = _ctx;
}

class SessionInfoResponse implements IConvertible
{
    DateTime created;
    String id;
    String referrerUrl;
    String userAuthId;
    String userAuthName;
    String userName;
    String displayName;
    String firstName;
    String lastName;
    String email;
    DateTime createdAt;
    DateTime lastModified;
    List<String> roles;
    List<String> permissions;
    bool isAuthenticated;
    String authProvider;
    String profileUrl;
    String githubProfileUrl;
    String twitterProfileUrl;
    String accessToken;
    String avatarUrl;
    List<TechnologyStack> techStacks;
    List<TechnologyStack> favoriteTechStacks;
    List<Technology> favoriteTechnologies;
    UserActivity userActivity;
    List<OrganizationMember> members;
    List<OrganizationMemberInvite> memberInvites;
    List<OrganizationSubscription> subscriptions;
    ResponseStatus responseStatus;

    SessionInfoResponse({this.created,this.id,this.referrerUrl,this.userAuthId,this.userAuthName,this.userName,this.displayName,this.firstName,this.lastName,this.email,this.createdAt,this.lastModified,this.roles,this.permissions,this.isAuthenticated,this.authProvider,this.profileUrl,this.githubProfileUrl,this.twitterProfileUrl,this.accessToken,this.avatarUrl,this.techStacks,this.favoriteTechStacks,this.favoriteTechnologies,this.userActivity,this.members,this.memberInvites,this.subscriptions,this.responseStatus});
    SessionInfoResponse.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        created = JsonConverters.fromJson(json['created'],'DateTime',context);
        id = json['id'];
        referrerUrl = json['referrerUrl'];
        userAuthId = json['userAuthId'];
        userAuthName = json['userAuthName'];
        userName = json['userName'];
        displayName = json['displayName'];
        firstName = json['firstName'];
        lastName = json['lastName'];
        email = json['email'];
        createdAt = JsonConverters.fromJson(json['createdAt'],'DateTime',context);
        lastModified = JsonConverters.fromJson(json['lastModified'],'DateTime',context);
        roles = JsonConverters.fromJson(json['roles'],'List<String>',context);
        permissions = JsonConverters.fromJson(json['permissions'],'List<String>',context);
        isAuthenticated = json['isAuthenticated'];
        authProvider = json['authProvider'];
        profileUrl = json['profileUrl'];
        githubProfileUrl = json['githubProfileUrl'];
        twitterProfileUrl = json['twitterProfileUrl'];
        accessToken = json['accessToken'];
        avatarUrl = json['avatarUrl'];
        techStacks = JsonConverters.fromJson(json['techStacks'],'List<TechnologyStack>',context);
        favoriteTechStacks = JsonConverters.fromJson(json['favoriteTechStacks'],'List<TechnologyStack>',context);
        favoriteTechnologies = JsonConverters.fromJson(json['favoriteTechnologies'],'List<Technology>',context);
        userActivity = JsonConverters.fromJson(json['userActivity'],'UserActivity',context);
        members = JsonConverters.fromJson(json['members'],'List<OrganizationMember>',context);
        memberInvites = JsonConverters.fromJson(json['memberInvites'],'List<OrganizationMemberInvite>',context);
        subscriptions = JsonConverters.fromJson(json['subscriptions'],'List<OrganizationSubscription>',context);
        responseStatus = JsonConverters.fromJson(json['responseStatus'],'ResponseStatus',context);
        return this;
    }

    Map<String, dynamic> toJson() => {
        'created': JsonConverters.toJson(created,'DateTime',context),
        'id': id,
        'referrerUrl': referrerUrl,
        'userAuthId': userAuthId,
        'userAuthName': userAuthName,
        'userName': userName,
        'displayName': displayName,
        'firstName': firstName,
        'lastName': lastName,
        'email': email,
        'createdAt': JsonConverters.toJson(createdAt,'DateTime',context),
        'lastModified': JsonConverters.toJson(lastModified,'DateTime',context),
        'roles': JsonConverters.toJson(roles,'List<String>',context),
        'permissions': JsonConverters.toJson(permissions,'List<String>',context),
        'isAuthenticated': isAuthenticated,
        'authProvider': authProvider,
        'profileUrl': profileUrl,
        'githubProfileUrl': githubProfileUrl,
        'twitterProfileUrl': twitterProfileUrl,
        'accessToken': accessToken,
        'avatarUrl': avatarUrl,
        'techStacks': JsonConverters.toJson(techStacks,'List<TechnologyStack>',context),
        'favoriteTechStacks': JsonConverters.toJson(favoriteTechStacks,'List<TechnologyStack>',context),
        'favoriteTechnologies': JsonConverters.toJson(favoriteTechnologies,'List<Technology>',context),
        'userActivity': JsonConverters.toJson(userActivity,'UserActivity',context),
        'members': JsonConverters.toJson(members,'List<OrganizationMember>',context),
        'memberInvites': JsonConverters.toJson(memberInvites,'List<OrganizationMemberInvite>',context),
        'subscriptions': JsonConverters.toJson(subscriptions,'List<OrganizationSubscription>',context),
        'responseStatus': JsonConverters.toJson(responseStatus,'ResponseStatus',context)
    };

    TypeContext context = _ctx;
}

class GetTechnologyPreviousVersionsResponse implements IConvertible
{
    List<TechnologyHistory> results;

    GetTechnologyPreviousVersionsResponse({this.results});
    GetTechnologyPreviousVersionsResponse.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        results = JsonConverters.fromJson(json['results'],'List<TechnologyHistory>',context);
        return this;
    }

    Map<String, dynamic> toJson() => {
        'results': JsonConverters.toJson(results,'List<TechnologyHistory>',context)
    };

    TypeContext context = _ctx;
}

class GetAllTechnologiesResponse implements IConvertible
{
    List<Technology> results;
    int total;

    GetAllTechnologiesResponse({this.results,this.total});
    GetAllTechnologiesResponse.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        results = JsonConverters.fromJson(json['results'],'List<Technology>',context);
        total = json['total'];
        return this;
    }

    Map<String, dynamic> toJson() => {
        'results': JsonConverters.toJson(results,'List<Technology>',context),
        'total': total
    };

    TypeContext context = _ctx;
}

class GetTechnologyResponse implements IConvertible
{
    DateTime created;
    Technology technology;
    List<TechnologyStack> technologyStacks;
    ResponseStatus responseStatus;

    GetTechnologyResponse({this.created,this.technology,this.technologyStacks,this.responseStatus});
    GetTechnologyResponse.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        created = JsonConverters.fromJson(json['created'],'DateTime',context);
        technology = JsonConverters.fromJson(json['technology'],'Technology',context);
        technologyStacks = JsonConverters.fromJson(json['technologyStacks'],'List<TechnologyStack>',context);
        responseStatus = JsonConverters.fromJson(json['responseStatus'],'ResponseStatus',context);
        return this;
    }

    Map<String, dynamic> toJson() => {
        'created': JsonConverters.toJson(created,'DateTime',context),
        'technology': JsonConverters.toJson(technology,'Technology',context),
        'technologyStacks': JsonConverters.toJson(technologyStacks,'List<TechnologyStack>',context),
        'responseStatus': JsonConverters.toJson(responseStatus,'ResponseStatus',context)
    };

    TypeContext context = _ctx;
}

class GetTechnologyFavoriteDetailsResponse implements IConvertible
{
    List<String> users;
    int favoriteCount;

    GetTechnologyFavoriteDetailsResponse({this.users,this.favoriteCount});
    GetTechnologyFavoriteDetailsResponse.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        users = JsonConverters.fromJson(json['users'],'List<String>',context);
        favoriteCount = json['favoriteCount'];
        return this;
    }

    Map<String, dynamic> toJson() => {
        'users': JsonConverters.toJson(users,'List<String>',context),
        'favoriteCount': favoriteCount
    };

    TypeContext context = _ctx;
}

class CreateTechnologyResponse implements IConvertible
{
    Technology result;
    ResponseStatus responseStatus;

    CreateTechnologyResponse({this.result,this.responseStatus});
    CreateTechnologyResponse.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        result = JsonConverters.fromJson(json['result'],'Technology',context);
        responseStatus = JsonConverters.fromJson(json['responseStatus'],'ResponseStatus',context);
        return this;
    }

    Map<String, dynamic> toJson() => {
        'result': JsonConverters.toJson(result,'Technology',context),
        'responseStatus': JsonConverters.toJson(responseStatus,'ResponseStatus',context)
    };

    TypeContext context = _ctx;
}

class UpdateTechnologyResponse implements IConvertible
{
    Technology result;
    ResponseStatus responseStatus;

    UpdateTechnologyResponse({this.result,this.responseStatus});
    UpdateTechnologyResponse.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        result = JsonConverters.fromJson(json['result'],'Technology',context);
        responseStatus = JsonConverters.fromJson(json['responseStatus'],'ResponseStatus',context);
        return this;
    }

    Map<String, dynamic> toJson() => {
        'result': JsonConverters.toJson(result,'Technology',context),
        'responseStatus': JsonConverters.toJson(responseStatus,'ResponseStatus',context)
    };

    TypeContext context = _ctx;
}

class DeleteTechnologyResponse implements IConvertible
{
    Technology result;
    ResponseStatus responseStatus;

    DeleteTechnologyResponse({this.result,this.responseStatus});
    DeleteTechnologyResponse.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        result = JsonConverters.fromJson(json['result'],'Technology',context);
        responseStatus = JsonConverters.fromJson(json['responseStatus'],'ResponseStatus',context);
        return this;
    }

    Map<String, dynamic> toJson() => {
        'result': JsonConverters.toJson(result,'Technology',context),
        'responseStatus': JsonConverters.toJson(responseStatus,'ResponseStatus',context)
    };

    TypeContext context = _ctx;
}

class GetTechnologyStackPreviousVersionsResponse implements IConvertible
{
    List<TechnologyStackHistory> results;

    GetTechnologyStackPreviousVersionsResponse({this.results});
    GetTechnologyStackPreviousVersionsResponse.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        results = JsonConverters.fromJson(json['results'],'List<TechnologyStackHistory>',context);
        return this;
    }

    Map<String, dynamic> toJson() => {
        'results': JsonConverters.toJson(results,'List<TechnologyStackHistory>',context)
    };

    TypeContext context = _ctx;
}

class GetPageStatsResponse implements IConvertible
{
    String type;
    String slug;
    int viewCount;
    int favCount;

    GetPageStatsResponse({this.type,this.slug,this.viewCount,this.favCount});
    GetPageStatsResponse.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        type = json['type'];
        slug = json['slug'];
        viewCount = json['viewCount'];
        favCount = json['favCount'];
        return this;
    }

    Map<String, dynamic> toJson() => {
        'type': type,
        'slug': slug,
        'viewCount': viewCount,
        'favCount': favCount
    };

    TypeContext context = _ctx;
}

class HourlyTaskResponse implements IConvertible
{
    Map<String,String> meta;
    ResponseStatus responseStatus;

    HourlyTaskResponse({this.meta,this.responseStatus});
    HourlyTaskResponse.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        meta = JsonConverters.toStringMap(json['meta']);
        responseStatus = JsonConverters.fromJson(json['responseStatus'],'ResponseStatus',context);
        return this;
    }

    Map<String, dynamic> toJson() => {
        'meta': meta,
        'responseStatus': JsonConverters.toJson(responseStatus,'ResponseStatus',context)
    };

    TypeContext context = _ctx;
}

class OverviewResponse implements IConvertible
{
    DateTime created;
    List<UserInfo> topUsers;
    List<TechnologyInfo> topTechnologies;
    List<TechStackDetails> latestTechStacks;
    List<TechnologyStack> popularTechStacks;
    List<OrganizationInfo> allOrganizations;
    Map<String,List<TechnologyInfo>> topTechnologiesByTier;
    ResponseStatus responseStatus;

    OverviewResponse({this.created,this.topUsers,this.topTechnologies,this.latestTechStacks,this.popularTechStacks,this.allOrganizations,this.topTechnologiesByTier,this.responseStatus});
    OverviewResponse.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        created = JsonConverters.fromJson(json['created'],'DateTime',context);
        topUsers = JsonConverters.fromJson(json['topUsers'],'List<UserInfo>',context);
        topTechnologies = JsonConverters.fromJson(json['topTechnologies'],'List<TechnologyInfo>',context);
        latestTechStacks = JsonConverters.fromJson(json['latestTechStacks'],'List<TechStackDetails>',context);
        popularTechStacks = JsonConverters.fromJson(json['popularTechStacks'],'List<TechnologyStack>',context);
        allOrganizations = JsonConverters.fromJson(json['allOrganizations'],'List<OrganizationInfo>',context);
        topTechnologiesByTier = JsonConverters.fromJson(json['topTechnologiesByTier'],'Map<String,List<TechnologyInfo>>',context);
        responseStatus = JsonConverters.fromJson(json['responseStatus'],'ResponseStatus',context);
        return this;
    }

    Map<String, dynamic> toJson() => {
        'created': JsonConverters.toJson(created,'DateTime',context),
        'topUsers': JsonConverters.toJson(topUsers,'List<UserInfo>',context),
        'topTechnologies': JsonConverters.toJson(topTechnologies,'List<TechnologyInfo>',context),
        'latestTechStacks': JsonConverters.toJson(latestTechStacks,'List<TechStackDetails>',context),
        'popularTechStacks': JsonConverters.toJson(popularTechStacks,'List<TechnologyStack>',context),
        'allOrganizations': JsonConverters.toJson(allOrganizations,'List<OrganizationInfo>',context),
        'topTechnologiesByTier': JsonConverters.toJson(topTechnologiesByTier,'Map<String,List<TechnologyInfo>>',context),
        'responseStatus': JsonConverters.toJson(responseStatus,'ResponseStatus',context)
    };

    TypeContext context = _ctx;
}

class AppOverviewResponse implements IConvertible
{
    DateTime created;
    List<Option> allTiers;
    List<TechnologyInfo> topTechnologies;
    ResponseStatus responseStatus;

    AppOverviewResponse({this.created,this.allTiers,this.topTechnologies,this.responseStatus});
    AppOverviewResponse.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        created = JsonConverters.fromJson(json['created'],'DateTime',context);
        allTiers = JsonConverters.fromJson(json['allTiers'],'List<Option>',context);
        topTechnologies = JsonConverters.fromJson(json['topTechnologies'],'List<TechnologyInfo>',context);
        responseStatus = JsonConverters.fromJson(json['responseStatus'],'ResponseStatus',context);
        return this;
    }

    Map<String, dynamic> toJson() => {
        'created': JsonConverters.toJson(created,'DateTime',context),
        'allTiers': JsonConverters.toJson(allTiers,'List<Option>',context),
        'topTechnologies': JsonConverters.toJson(topTechnologies,'List<TechnologyInfo>',context),
        'responseStatus': JsonConverters.toJson(responseStatus,'ResponseStatus',context)
    };

    TypeContext context = _ctx;
}

class GetAllTechnologyStacksResponse implements IConvertible
{
    List<TechnologyStack> results;
    int total;

    GetAllTechnologyStacksResponse({this.results,this.total});
    GetAllTechnologyStacksResponse.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        results = JsonConverters.fromJson(json['results'],'List<TechnologyStack>',context);
        total = json['total'];
        return this;
    }

    Map<String, dynamic> toJson() => {
        'results': JsonConverters.toJson(results,'List<TechnologyStack>',context),
        'total': total
    };

    TypeContext context = _ctx;
}

class GetTechnologyStackResponse implements IConvertible
{
    DateTime created;
    TechStackDetails result;
    ResponseStatus responseStatus;

    GetTechnologyStackResponse({this.created,this.result,this.responseStatus});
    GetTechnologyStackResponse.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        created = JsonConverters.fromJson(json['created'],'DateTime',context);
        result = JsonConverters.fromJson(json['result'],'TechStackDetails',context);
        responseStatus = JsonConverters.fromJson(json['responseStatus'],'ResponseStatus',context);
        return this;
    }

    Map<String, dynamic> toJson() => {
        'created': JsonConverters.toJson(created,'DateTime',context),
        'result': JsonConverters.toJson(result,'TechStackDetails',context),
        'responseStatus': JsonConverters.toJson(responseStatus,'ResponseStatus',context)
    };

    TypeContext context = _ctx;
}

class GetTechnologyStackFavoriteDetailsResponse implements IConvertible
{
    List<String> users;
    int favoriteCount;

    GetTechnologyStackFavoriteDetailsResponse({this.users,this.favoriteCount});
    GetTechnologyStackFavoriteDetailsResponse.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        users = JsonConverters.fromJson(json['users'],'List<String>',context);
        favoriteCount = json['favoriteCount'];
        return this;
    }

    Map<String, dynamic> toJson() => {
        'users': JsonConverters.toJson(users,'List<String>',context),
        'favoriteCount': favoriteCount
    };

    TypeContext context = _ctx;
}

class GetConfigResponse implements IConvertible
{
    List<Option> allTiers;
    List<Option> allPostTypes;
    List<Option> allFlagTypes;

    GetConfigResponse({this.allTiers,this.allPostTypes,this.allFlagTypes});
    GetConfigResponse.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        allTiers = JsonConverters.fromJson(json['allTiers'],'List<Option>',context);
        allPostTypes = JsonConverters.fromJson(json['allPostTypes'],'List<Option>',context);
        allFlagTypes = JsonConverters.fromJson(json['allFlagTypes'],'List<Option>',context);
        return this;
    }

    Map<String, dynamic> toJson() => {
        'allTiers': JsonConverters.toJson(allTiers,'List<Option>',context),
        'allPostTypes': JsonConverters.toJson(allPostTypes,'List<Option>',context),
        'allFlagTypes': JsonConverters.toJson(allFlagTypes,'List<Option>',context)
    };

    TypeContext context = _ctx;
}

class CreateTechnologyStackResponse implements IConvertible
{
    TechStackDetails result;
    ResponseStatus responseStatus;

    CreateTechnologyStackResponse({this.result,this.responseStatus});
    CreateTechnologyStackResponse.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        result = JsonConverters.fromJson(json['result'],'TechStackDetails',context);
        responseStatus = JsonConverters.fromJson(json['responseStatus'],'ResponseStatus',context);
        return this;
    }

    Map<String, dynamic> toJson() => {
        'result': JsonConverters.toJson(result,'TechStackDetails',context),
        'responseStatus': JsonConverters.toJson(responseStatus,'ResponseStatus',context)
    };

    TypeContext context = _ctx;
}

class UpdateTechnologyStackResponse implements IConvertible
{
    TechStackDetails result;
    ResponseStatus responseStatus;

    UpdateTechnologyStackResponse({this.result,this.responseStatus});
    UpdateTechnologyStackResponse.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        result = JsonConverters.fromJson(json['result'],'TechStackDetails',context);
        responseStatus = JsonConverters.fromJson(json['responseStatus'],'ResponseStatus',context);
        return this;
    }

    Map<String, dynamic> toJson() => {
        'result': JsonConverters.toJson(result,'TechStackDetails',context),
        'responseStatus': JsonConverters.toJson(responseStatus,'ResponseStatus',context)
    };

    TypeContext context = _ctx;
}

class DeleteTechnologyStackResponse implements IConvertible
{
    TechStackDetails result;
    ResponseStatus responseStatus;

    DeleteTechnologyStackResponse({this.result,this.responseStatus});
    DeleteTechnologyStackResponse.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        result = JsonConverters.fromJson(json['result'],'TechStackDetails',context);
        responseStatus = JsonConverters.fromJson(json['responseStatus'],'ResponseStatus',context);
        return this;
    }

    Map<String, dynamic> toJson() => {
        'result': JsonConverters.toJson(result,'TechStackDetails',context),
        'responseStatus': JsonConverters.toJson(responseStatus,'ResponseStatus',context)
    };

    TypeContext context = _ctx;
}

class GetFavoriteTechStackResponse implements IConvertible
{
    List<TechnologyStack> results;

    GetFavoriteTechStackResponse({this.results});
    GetFavoriteTechStackResponse.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        results = JsonConverters.fromJson(json['results'],'List<TechnologyStack>',context);
        return this;
    }

    Map<String, dynamic> toJson() => {
        'results': JsonConverters.toJson(results,'List<TechnologyStack>',context)
    };

    TypeContext context = _ctx;
}

class FavoriteTechStackResponse implements IConvertible
{
    TechnologyStack result;

    FavoriteTechStackResponse({this.result});
    FavoriteTechStackResponse.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        result = JsonConverters.fromJson(json['result'],'TechnologyStack',context);
        return this;
    }

    Map<String, dynamic> toJson() => {
        'result': JsonConverters.toJson(result,'TechnologyStack',context)
    };

    TypeContext context = _ctx;
}

class GetFavoriteTechnologiesResponse implements IConvertible
{
    List<Technology> results;

    GetFavoriteTechnologiesResponse({this.results});
    GetFavoriteTechnologiesResponse.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        results = JsonConverters.fromJson(json['results'],'List<Technology>',context);
        return this;
    }

    Map<String, dynamic> toJson() => {
        'results': JsonConverters.toJson(results,'List<Technology>',context)
    };

    TypeContext context = _ctx;
}

class FavoriteTechnologyResponse implements IConvertible
{
    Technology result;

    FavoriteTechnologyResponse({this.result});
    FavoriteTechnologyResponse.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        result = JsonConverters.fromJson(json['result'],'Technology',context);
        return this;
    }

    Map<String, dynamic> toJson() => {
        'result': JsonConverters.toJson(result,'Technology',context)
    };

    TypeContext context = _ctx;
}

class GetUserFeedResponse implements IConvertible
{
    List<TechStackDetails> results;

    GetUserFeedResponse({this.results});
    GetUserFeedResponse.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        results = JsonConverters.fromJson(json['results'],'List<TechStackDetails>',context);
        return this;
    }

    Map<String, dynamic> toJson() => {
        'results': JsonConverters.toJson(results,'List<TechStackDetails>',context)
    };

    TypeContext context = _ctx;
}

class GetUsersKarmaResponse implements IConvertible
{
    Map<int,int> results;
    ResponseStatus responseStatus;

    GetUsersKarmaResponse({this.results,this.responseStatus});
    GetUsersKarmaResponse.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        results = JsonConverters.fromJson(json['results'],'Map<int,int>',context);
        responseStatus = JsonConverters.fromJson(json['responseStatus'],'ResponseStatus',context);
        return this;
    }

    Map<String, dynamic> toJson() => {
        'results': JsonConverters.toJson(results,'Map<int,int>',context),
        'responseStatus': JsonConverters.toJson(responseStatus,'ResponseStatus',context)
    };

    TypeContext context = _ctx;
}

class GetUserInfoResponse implements IConvertible
{
    int id;
    String userName;
    DateTime created;
    String avatarUrl;
    List<TechnologyStack> techStacks;
    List<TechnologyStack> favoriteTechStacks;
    List<Technology> favoriteTechnologies;
    UserActivity userActivity;
    ResponseStatus responseStatus;

    GetUserInfoResponse({this.id,this.userName,this.created,this.avatarUrl,this.techStacks,this.favoriteTechStacks,this.favoriteTechnologies,this.userActivity,this.responseStatus});
    GetUserInfoResponse.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        id = json['id'];
        userName = json['userName'];
        created = JsonConverters.fromJson(json['created'],'DateTime',context);
        avatarUrl = json['avatarUrl'];
        techStacks = JsonConverters.fromJson(json['techStacks'],'List<TechnologyStack>',context);
        favoriteTechStacks = JsonConverters.fromJson(json['favoriteTechStacks'],'List<TechnologyStack>',context);
        favoriteTechnologies = JsonConverters.fromJson(json['favoriteTechnologies'],'List<Technology>',context);
        userActivity = JsonConverters.fromJson(json['userActivity'],'UserActivity',context);
        responseStatus = JsonConverters.fromJson(json['responseStatus'],'ResponseStatus',context);
        return this;
    }

    Map<String, dynamic> toJson() => {
        'id': id,
        'userName': userName,
        'created': JsonConverters.toJson(created,'DateTime',context),
        'avatarUrl': avatarUrl,
        'techStacks': JsonConverters.toJson(techStacks,'List<TechnologyStack>',context),
        'favoriteTechStacks': JsonConverters.toJson(favoriteTechStacks,'List<TechnologyStack>',context),
        'favoriteTechnologies': JsonConverters.toJson(favoriteTechnologies,'List<Technology>',context),
        'userActivity': JsonConverters.toJson(userActivity,'UserActivity',context),
        'responseStatus': JsonConverters.toJson(responseStatus,'ResponseStatus',context)
    };

    TypeContext context = _ctx;
}

class SyncDiscourseSiteResponse implements IConvertible
{
    String timeTaken;
    List<String> userLogs;
    List<String> postsLogs;
    ResponseStatus responseStatus;

    SyncDiscourseSiteResponse({this.timeTaken,this.userLogs,this.postsLogs,this.responseStatus});
    SyncDiscourseSiteResponse.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        timeTaken = json['timeTaken'];
        userLogs = JsonConverters.fromJson(json['userLogs'],'List<String>',context);
        postsLogs = JsonConverters.fromJson(json['postsLogs'],'List<String>',context);
        responseStatus = JsonConverters.fromJson(json['responseStatus'],'ResponseStatus',context);
        return this;
    }

    Map<String, dynamic> toJson() => {
        'timeTaken': timeTaken,
        'userLogs': JsonConverters.toJson(userLogs,'List<String>',context),
        'postsLogs': JsonConverters.toJson(postsLogs,'List<String>',context),
        'responseStatus': JsonConverters.toJson(responseStatus,'ResponseStatus',context)
    };

    TypeContext context = _ctx;
}

class LogoUrlApprovalResponse implements IConvertible
{
    Technology result;

    LogoUrlApprovalResponse({this.result});
    LogoUrlApprovalResponse.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        result = JsonConverters.fromJson(json['result'],'Technology',context);
        return this;
    }

    Map<String, dynamic> toJson() => {
        'result': JsonConverters.toJson(result,'Technology',context)
    };

    TypeContext context = _ctx;
}

class LockStackResponse implements IConvertible
{
    LockStackResponse();
    LockStackResponse.fromJson(Map<String, dynamic> json) : super();
    fromMap(Map<String, dynamic> json) {
        return this;
    }

    Map<String, dynamic> toJson() => {};
    TypeContext context = _ctx;
}

class EmailTestRespoonse implements IConvertible
{
    ResponseStatus responseStatus;

    EmailTestRespoonse({this.responseStatus});
    EmailTestRespoonse.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        responseStatus = JsonConverters.fromJson(json['responseStatus'],'ResponseStatus',context);
        return this;
    }

    Map<String, dynamic> toJson() => {
        'responseStatus': JsonConverters.toJson(responseStatus,'ResponseStatus',context)
    };

    TypeContext context = _ctx;
}

class ImportUserResponse implements IConvertible
{
    int id;
    ResponseStatus responseStatus;

    ImportUserResponse({this.id,this.responseStatus});
    ImportUserResponse.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        id = json['id'];
        responseStatus = JsonConverters.fromJson(json['responseStatus'],'ResponseStatus',context);
        return this;
    }

    Map<String, dynamic> toJson() => {
        'id': id,
        'responseStatus': JsonConverters.toJson(responseStatus,'ResponseStatus',context)
    };

    TypeContext context = _ctx;
}

class ImportUserVoiceSuggestionResponse implements IConvertible
{
    int postId;
    String postSlug;
    ResponseStatus responseStatus;

    ImportUserVoiceSuggestionResponse({this.postId,this.postSlug,this.responseStatus});
    ImportUserVoiceSuggestionResponse.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        postId = json['postId'];
        postSlug = json['postSlug'];
        responseStatus = JsonConverters.fromJson(json['responseStatus'],'ResponseStatus',context);
        return this;
    }

    Map<String, dynamic> toJson() => {
        'postId': postId,
        'postSlug': postSlug,
        'responseStatus': JsonConverters.toJson(responseStatus,'ResponseStatus',context)
    };

    TypeContext context = _ctx;
}

// @Route("/ping")
class Ping implements IConvertible
{
    Ping();
    Ping.fromJson(Map<String, dynamic> json) : super();
    fromMap(Map<String, dynamic> json) {
        return this;
    }

    Map<String, dynamic> toJson() => {};
    TypeContext context = _ctx;
}

class DummyTypes implements IConvertible
{
    List<Post> post;

    DummyTypes({this.post});
    DummyTypes.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        post = JsonConverters.fromJson(json['post'],'List<Post>',context);
        return this;
    }

    Map<String, dynamic> toJson() => {
        'post': JsonConverters.toJson(post,'List<Post>',context)
    };

    TypeContext context = _ctx;
}

// @Route("/orgs/{Id}", "GET")
class GetOrganization implements IReturn<GetOrganizationResponse>, IConvertible
{
    int id;

    GetOrganization({this.id});
    GetOrganization.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        id = json['id'];
        return this;
    }

    Map<String, dynamic> toJson() => {
        'id': id
    };

    createResponse() { return new GetOrganizationResponse(); }
    String getTypeName() { return "GetOrganization"; }
    TypeContext context = _ctx;
}

// @Route("/organizations/{Slug}", "GET")
class GetOrganizationBySlug implements IReturn<GetOrganizationResponse>, IConvertible
{
    String slug;

    GetOrganizationBySlug({this.slug});
    GetOrganizationBySlug.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        slug = json['slug'];
        return this;
    }

    Map<String, dynamic> toJson() => {
        'slug': slug
    };

    createResponse() { return new GetOrganizationResponse(); }
    String getTypeName() { return "GetOrganizationBySlug"; }
    TypeContext context = _ctx;
}

// @Route("/orgs/{Id}/members", "GET")
class GetOrganizationMembers implements IReturn<GetOrganizationMembersResponse>, IConvertible
{
    int id;

    GetOrganizationMembers({this.id});
    GetOrganizationMembers.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        id = json['id'];
        return this;
    }

    Map<String, dynamic> toJson() => {
        'id': id
    };

    createResponse() { return new GetOrganizationMembersResponse(); }
    String getTypeName() { return "GetOrganizationMembers"; }
    TypeContext context = _ctx;
}

// @Route("/orgs/{Id}/admin", "GET")
class GetOrganizationAdmin implements IReturn<GetOrganizationAdminResponse>, IConvertible
{
    int id;

    GetOrganizationAdmin({this.id});
    GetOrganizationAdmin.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        id = json['id'];
        return this;
    }

    Map<String, dynamic> toJson() => {
        'id': id
    };

    createResponse() { return new GetOrganizationAdminResponse(); }
    String getTypeName() { return "GetOrganizationAdmin"; }
    TypeContext context = _ctx;
}

// @Route("/orgs/posts/new", "POST")
class CreateOrganizationForTechnology implements IReturn<CreateOrganizationForTechnologyResponse>, IConvertible
{
    int technologyId;
    int techStackId;

    CreateOrganizationForTechnology({this.technologyId,this.techStackId});
    CreateOrganizationForTechnology.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        technologyId = json['technologyId'];
        techStackId = json['techStackId'];
        return this;
    }

    Map<String, dynamic> toJson() => {
        'technologyId': technologyId,
        'techStackId': techStackId
    };

    createResponse() { return new CreateOrganizationForTechnologyResponse(); }
    String getTypeName() { return "CreateOrganizationForTechnology"; }
    TypeContext context = _ctx;
}

// @Route("/orgs", "POST")
class CreateOrganization implements IReturn<CreateOrganizationResponse>, IConvertible
{
    String name;
    String slug;
    String description;
    int refId;
    String refSource;
    String refUrn;

    CreateOrganization({this.name,this.slug,this.description,this.refId,this.refSource,this.refUrn});
    CreateOrganization.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        name = json['name'];
        slug = json['slug'];
        description = json['description'];
        refId = json['refId'];
        refSource = json['refSource'];
        refUrn = json['refUrn'];
        return this;
    }

    Map<String, dynamic> toJson() => {
        'name': name,
        'slug': slug,
        'description': description,
        'refId': refId,
        'refSource': refSource,
        'refUrn': refUrn
    };

    createResponse() { return new CreateOrganizationResponse(); }
    String getTypeName() { return "CreateOrganization"; }
    TypeContext context = _ctx;
}

// @Route("/orgs/{Id}", "PUT")
class UpdateOrganization implements IReturn<UpdateOrganizationResponse>, IConvertible
{
    int id;
    String slug;
    String name;
    String description;
    String color;
    String textColor;
    String linkColor;
    String backgroundColor;
    String backgroundUrl;
    String logoUrl;
    String heroUrl;
    String lang;
    int deletePostsWithReportCount;
    bool disableInvites;
    String defaultPostType;
    List<String> defaultSubscriptionPostTypes;
    List<String> postTypes;
    List<String> moderatorPostTypes;
    List<int> technologyIds;

    UpdateOrganization({this.id,this.slug,this.name,this.description,this.color,this.textColor,this.linkColor,this.backgroundColor,this.backgroundUrl,this.logoUrl,this.heroUrl,this.lang,this.deletePostsWithReportCount,this.disableInvites,this.defaultPostType,this.defaultSubscriptionPostTypes,this.postTypes,this.moderatorPostTypes,this.technologyIds});
    UpdateOrganization.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        id = json['id'];
        slug = json['slug'];
        name = json['name'];
        description = json['description'];
        color = json['color'];
        textColor = json['textColor'];
        linkColor = json['linkColor'];
        backgroundColor = json['backgroundColor'];
        backgroundUrl = json['backgroundUrl'];
        logoUrl = json['logoUrl'];
        heroUrl = json['heroUrl'];
        lang = json['lang'];
        deletePostsWithReportCount = json['deletePostsWithReportCount'];
        disableInvites = json['disableInvites'];
        defaultPostType = json['defaultPostType'];
        defaultSubscriptionPostTypes = JsonConverters.fromJson(json['defaultSubscriptionPostTypes'],'List<String>',context);
        postTypes = JsonConverters.fromJson(json['postTypes'],'List<String>',context);
        moderatorPostTypes = JsonConverters.fromJson(json['moderatorPostTypes'],'List<String>',context);
        technologyIds = JsonConverters.fromJson(json['technologyIds'],'List<int>',context);
        return this;
    }

    Map<String, dynamic> toJson() => {
        'id': id,
        'slug': slug,
        'name': name,
        'description': description,
        'color': color,
        'textColor': textColor,
        'linkColor': linkColor,
        'backgroundColor': backgroundColor,
        'backgroundUrl': backgroundUrl,
        'logoUrl': logoUrl,
        'heroUrl': heroUrl,
        'lang': lang,
        'deletePostsWithReportCount': deletePostsWithReportCount,
        'disableInvites': disableInvites,
        'defaultPostType': defaultPostType,
        'defaultSubscriptionPostTypes': JsonConverters.toJson(defaultSubscriptionPostTypes,'List<String>',context),
        'postTypes': JsonConverters.toJson(postTypes,'List<String>',context),
        'moderatorPostTypes': JsonConverters.toJson(moderatorPostTypes,'List<String>',context),
        'technologyIds': JsonConverters.toJson(technologyIds,'List<int>',context)
    };

    createResponse() { return new UpdateOrganizationResponse(); }
    String getTypeName() { return "UpdateOrganization"; }
    TypeContext context = _ctx;
}

// @Route("/orgs/{Id}", "DELETE")
class DeleteOrganization implements IReturnVoid, IConvertible
{
    int id;

    DeleteOrganization({this.id});
    DeleteOrganization.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        id = json['id'];
        return this;
    }

    Map<String, dynamic> toJson() => {
        'id': id
    };

    createResponse() {}
    String getTypeName() { return "DeleteOrganization"; }
    TypeContext context = _ctx;
}

// @Route("/orgs/{Id}/lock", "PUT")
class LockOrganization implements IReturnVoid, IConvertible
{
    int id;
    bool lock;
    String reason;

    LockOrganization({this.id,this.lock,this.reason});
    LockOrganization.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        id = json['id'];
        lock = json['lock'];
        reason = json['reason'];
        return this;
    }

    Map<String, dynamic> toJson() => {
        'id': id,
        'lock': lock,
        'reason': reason
    };

    createResponse() {}
    String getTypeName() { return "LockOrganization"; }
    TypeContext context = _ctx;
}

// @Route("/orgs/{OrganizationId}/labels", "POST")
class AddOrganizationLabel implements IReturn<OrganizationLabelResponse>, IConvertible
{
    int organizationId;
    String slug;
    String description;
    String color;

    AddOrganizationLabel({this.organizationId,this.slug,this.description,this.color});
    AddOrganizationLabel.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        organizationId = json['organizationId'];
        slug = json['slug'];
        description = json['description'];
        color = json['color'];
        return this;
    }

    Map<String, dynamic> toJson() => {
        'organizationId': organizationId,
        'slug': slug,
        'description': description,
        'color': color
    };

    createResponse() { return new OrganizationLabelResponse(); }
    String getTypeName() { return "AddOrganizationLabel"; }
    TypeContext context = _ctx;
}

// @Route("/orgs/{OrganizationId}/members/{Slug}", "PUT")
class UpdateOrganizationLabel implements IReturn<OrganizationLabelResponse>, IConvertible
{
    int organizationId;
    String slug;
    String description;
    String color;

    UpdateOrganizationLabel({this.organizationId,this.slug,this.description,this.color});
    UpdateOrganizationLabel.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        organizationId = json['organizationId'];
        slug = json['slug'];
        description = json['description'];
        color = json['color'];
        return this;
    }

    Map<String, dynamic> toJson() => {
        'organizationId': organizationId,
        'slug': slug,
        'description': description,
        'color': color
    };

    createResponse() { return new OrganizationLabelResponse(); }
    String getTypeName() { return "UpdateOrganizationLabel"; }
    TypeContext context = _ctx;
}

// @Route("/orgs/{OrganizationId}/labels/{Slug}", "DELETE")
class RemoveOrganizationLabel implements IReturnVoid, IConvertible
{
    int organizationId;
    String slug;

    RemoveOrganizationLabel({this.organizationId,this.slug});
    RemoveOrganizationLabel.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        organizationId = json['organizationId'];
        slug = json['slug'];
        return this;
    }

    Map<String, dynamic> toJson() => {
        'organizationId': organizationId,
        'slug': slug
    };

    createResponse() {}
    String getTypeName() { return "RemoveOrganizationLabel"; }
    TypeContext context = _ctx;
}

// @Route("/orgs/{OrganizationId}/categories", "POST")
class AddOrganizationCategory implements IReturn<AddCategoryResponse>, IConvertible
{
    int organizationId;
    String slug;
    String name;
    String description;
    List<int> technologyIds;

    AddOrganizationCategory({this.organizationId,this.slug,this.name,this.description,this.technologyIds});
    AddOrganizationCategory.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        organizationId = json['organizationId'];
        slug = json['slug'];
        name = json['name'];
        description = json['description'];
        technologyIds = JsonConverters.fromJson(json['technologyIds'],'List<int>',context);
        return this;
    }

    Map<String, dynamic> toJson() => {
        'organizationId': organizationId,
        'slug': slug,
        'name': name,
        'description': description,
        'technologyIds': JsonConverters.toJson(technologyIds,'List<int>',context)
    };

    createResponse() { return new AddCategoryResponse(); }
    String getTypeName() { return "AddOrganizationCategory"; }
    TypeContext context = _ctx;
}

// @Route("/orgs/{OrganizationId}/categories/{Id}", "PUT")
class UpdateOrganizationCategory implements IReturn<UpdateCategoryResponse>, IConvertible
{
    int organizationId;
    int id;
    String name;
    String slug;
    String description;
    List<int> technologyIds;

    UpdateOrganizationCategory({this.organizationId,this.id,this.name,this.slug,this.description,this.technologyIds});
    UpdateOrganizationCategory.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        organizationId = json['organizationId'];
        id = json['id'];
        name = json['name'];
        slug = json['slug'];
        description = json['description'];
        technologyIds = JsonConverters.fromJson(json['technologyIds'],'List<int>',context);
        return this;
    }

    Map<String, dynamic> toJson() => {
        'organizationId': organizationId,
        'id': id,
        'name': name,
        'slug': slug,
        'description': description,
        'technologyIds': JsonConverters.toJson(technologyIds,'List<int>',context)
    };

    createResponse() { return new UpdateCategoryResponse(); }
    String getTypeName() { return "UpdateOrganizationCategory"; }
    TypeContext context = _ctx;
}

// @Route("/orgs/{OrganizationId}/categories/{Id}", "DELETE")
class DeleteOrganizationCategory implements IReturnVoid, IConvertible
{
    int organizationId;
    int id;

    DeleteOrganizationCategory({this.organizationId,this.id});
    DeleteOrganizationCategory.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        organizationId = json['organizationId'];
        id = json['id'];
        return this;
    }

    Map<String, dynamic> toJson() => {
        'organizationId': organizationId,
        'id': id
    };

    createResponse() {}
    String getTypeName() { return "DeleteOrganizationCategory"; }
    TypeContext context = _ctx;
}

// @Route("/orgs/{OrganizationId}/members", "POST")
class AddOrganizationMember implements IReturn<AddOrganizationMemberResponse>, IConvertible
{
    int organizationId;
    String userName;
    bool isOwner;
    bool isModerator;
    bool denyPosts;
    bool denyComments;
    bool denyAll;
    String notes;

    AddOrganizationMember({this.organizationId,this.userName,this.isOwner,this.isModerator,this.denyPosts,this.denyComments,this.denyAll,this.notes});
    AddOrganizationMember.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        organizationId = json['organizationId'];
        userName = json['userName'];
        isOwner = json['isOwner'];
        isModerator = json['isModerator'];
        denyPosts = json['denyPosts'];
        denyComments = json['denyComments'];
        denyAll = json['denyAll'];
        notes = json['notes'];
        return this;
    }

    Map<String, dynamic> toJson() => {
        'organizationId': organizationId,
        'userName': userName,
        'isOwner': isOwner,
        'isModerator': isModerator,
        'denyPosts': denyPosts,
        'denyComments': denyComments,
        'denyAll': denyAll,
        'notes': notes
    };

    createResponse() { return new AddOrganizationMemberResponse(); }
    String getTypeName() { return "AddOrganizationMember"; }
    TypeContext context = _ctx;
}

// @Route("/orgs/{OrganizationId}/members/{Id}", "PUT")
class UpdateOrganizationMember implements IReturn<UpdateOrganizationMemberResponse>, IConvertible
{
    int organizationId;
    int userId;
    bool isOwner;
    bool isModerator;
    bool denyPosts;
    bool denyComments;
    bool denyAll;
    String notes;

    UpdateOrganizationMember({this.organizationId,this.userId,this.isOwner,this.isModerator,this.denyPosts,this.denyComments,this.denyAll,this.notes});
    UpdateOrganizationMember.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        organizationId = json['organizationId'];
        userId = json['userId'];
        isOwner = json['isOwner'];
        isModerator = json['isModerator'];
        denyPosts = json['denyPosts'];
        denyComments = json['denyComments'];
        denyAll = json['denyAll'];
        notes = json['notes'];
        return this;
    }

    Map<String, dynamic> toJson() => {
        'organizationId': organizationId,
        'userId': userId,
        'isOwner': isOwner,
        'isModerator': isModerator,
        'denyPosts': denyPosts,
        'denyComments': denyComments,
        'denyAll': denyAll,
        'notes': notes
    };

    createResponse() { return new UpdateOrganizationMemberResponse(); }
    String getTypeName() { return "UpdateOrganizationMember"; }
    TypeContext context = _ctx;
}

// @Route("/orgs/{OrganizationId}/members/{UserId}", "DELETE")
class RemoveOrganizationMember implements IReturnVoid, IConvertible
{
    int organizationId;
    int userId;

    RemoveOrganizationMember({this.organizationId,this.userId});
    RemoveOrganizationMember.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        organizationId = json['organizationId'];
        userId = json['userId'];
        return this;
    }

    Map<String, dynamic> toJson() => {
        'organizationId': organizationId,
        'userId': userId
    };

    createResponse() {}
    String getTypeName() { return "RemoveOrganizationMember"; }
    TypeContext context = _ctx;
}

// @Route("/orgs/{OrganizationId}/members/set", "POST")
class SetOrganizationMembers implements IReturn<SetOrganizationMembersResponse>, IConvertible
{
    int organizationId;
    List<String> githubUserNames;
    List<String> twitterUserNames;
    List<String> emails;
    bool removeUnspecifiedMembers;
    bool isOwner;
    bool isModerator;
    bool denyPosts;
    bool denyComments;
    bool denyAll;

    SetOrganizationMembers({this.organizationId,this.githubUserNames,this.twitterUserNames,this.emails,this.removeUnspecifiedMembers,this.isOwner,this.isModerator,this.denyPosts,this.denyComments,this.denyAll});
    SetOrganizationMembers.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        organizationId = json['organizationId'];
        githubUserNames = JsonConverters.fromJson(json['githubUserNames'],'List<String>',context);
        twitterUserNames = JsonConverters.fromJson(json['twitterUserNames'],'List<String>',context);
        emails = JsonConverters.fromJson(json['emails'],'List<String>',context);
        removeUnspecifiedMembers = json['removeUnspecifiedMembers'];
        isOwner = json['isOwner'];
        isModerator = json['isModerator'];
        denyPosts = json['denyPosts'];
        denyComments = json['denyComments'];
        denyAll = json['denyAll'];
        return this;
    }

    Map<String, dynamic> toJson() => {
        'organizationId': organizationId,
        'githubUserNames': JsonConverters.toJson(githubUserNames,'List<String>',context),
        'twitterUserNames': JsonConverters.toJson(twitterUserNames,'List<String>',context),
        'emails': JsonConverters.toJson(emails,'List<String>',context),
        'removeUnspecifiedMembers': removeUnspecifiedMembers,
        'isOwner': isOwner,
        'isModerator': isModerator,
        'denyPosts': denyPosts,
        'denyComments': denyComments,
        'denyAll': denyAll
    };

    createResponse() { return new SetOrganizationMembersResponse(); }
    String getTypeName() { return "SetOrganizationMembers"; }
    TypeContext context = _ctx;
}

// @Route("/orgs/{OrganizationId}/invites", "GET")
class GetOrganizationMemberInvites implements IReturn<GetOrganizationMemberInvitesResponse>, IConvertible
{
    int organizationId;

    GetOrganizationMemberInvites({this.organizationId});
    GetOrganizationMemberInvites.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        organizationId = json['organizationId'];
        return this;
    }

    Map<String, dynamic> toJson() => {
        'organizationId': organizationId
    };

    createResponse() { return new GetOrganizationMemberInvitesResponse(); }
    String getTypeName() { return "GetOrganizationMemberInvites"; }
    TypeContext context = _ctx;
}

// @Route("/orgs/{OrganizationId}/invites", "POST")
class RequestOrganizationMemberInvite implements IReturn<RequestOrganizationMemberInviteResponse>, IConvertible
{
    int organizationId;

    RequestOrganizationMemberInvite({this.organizationId});
    RequestOrganizationMemberInvite.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        organizationId = json['organizationId'];
        return this;
    }

    Map<String, dynamic> toJson() => {
        'organizationId': organizationId
    };

    createResponse() { return new RequestOrganizationMemberInviteResponse(); }
    String getTypeName() { return "RequestOrganizationMemberInvite"; }
    TypeContext context = _ctx;
}

// @Route("/orgs/{OrganizationId}/invites/{UserId}", "PUT")
class UpdateOrganizationMemberInvite implements IReturn<UpdateOrganizationMemberInviteResponse>, IConvertible
{
    int organizationId;
    String userName;
    bool approve;
    bool dismiss;

    UpdateOrganizationMemberInvite({this.organizationId,this.userName,this.approve,this.dismiss});
    UpdateOrganizationMemberInvite.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        organizationId = json['organizationId'];
        userName = json['userName'];
        approve = json['approve'];
        dismiss = json['dismiss'];
        return this;
    }

    Map<String, dynamic> toJson() => {
        'organizationId': organizationId,
        'userName': userName,
        'approve': approve,
        'dismiss': dismiss
    };

    createResponse() { return new UpdateOrganizationMemberInviteResponse(); }
    String getTypeName() { return "UpdateOrganizationMemberInvite"; }
    TypeContext context = _ctx;
}

// @Route("/posts", "GET")
class QueryPosts extends QueryDb1<Post> implements IReturn<QueryResponse<Post>>, IConvertible
{
    List<int> ids;
    int organizationId;
    List<int> organizationIds;
    List<String> types;
    List<int> anyTechnologyIds;
    List<String> Is;

    QueryPosts({this.ids,this.organizationId,this.organizationIds,this.types,this.anyTechnologyIds,this.Is});
    QueryPosts.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        super.fromMap(json);
        ids = JsonConverters.fromJson(json['ids'],'List<int>',context);
        organizationId = json['organizationId'];
        organizationIds = JsonConverters.fromJson(json['organizationIds'],'List<int>',context);
        types = JsonConverters.fromJson(json['types'],'List<String>',context);
        anyTechnologyIds = JsonConverters.fromJson(json['anyTechnologyIds'],'List<int>',context);
        Is = JsonConverters.fromJson(json['is'],'List<String>',context);
        return this;
    }

    Map<String, dynamic> toJson() => super.toJson()..addAll({
        'ids': JsonConverters.toJson(ids,'List<int>',context),
        'organizationId': organizationId,
        'organizationIds': JsonConverters.toJson(organizationIds,'List<int>',context),
        'types': JsonConverters.toJson(types,'List<String>',context),
        'anyTechnologyIds': JsonConverters.toJson(anyTechnologyIds,'List<int>',context),
        'is': JsonConverters.toJson(Is,'List<String>',context)
    });

    createResponse() { return new QueryResponse<Post>(); }
    String getTypeName() { return "QueryPosts"; }
    TypeContext context = _ctx;
}

// @Route("/posts/{Id}", "GET")
class GetPost implements IReturn<GetPostResponse>, IConvertible
{
    int id;
    String include;

    GetPost({this.id,this.include});
    GetPost.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        id = json['id'];
        include = json['include'];
        return this;
    }

    Map<String, dynamic> toJson() => {
        'id': id,
        'include': include
    };

    createResponse() { return new GetPostResponse(); }
    String getTypeName() { return "GetPost"; }
    TypeContext context = _ctx;
}

// @Route("/posts", "POST")
class CreatePost implements IReturn<CreatePostResponse>, IConvertible
{
    int organizationId;
    PostType type;
    int categoryId;
    String title;
    String url;
    String imageUrl;
    String content;
    bool lock;
    List<int> technologyIds;
    List<String> labels;
    DateTime fromDate;
    DateTime toDate;
    String metaType;
    String meta;
    int refId;
    String refSource;
    String refUrn;

    CreatePost({this.organizationId,this.type,this.categoryId,this.title,this.url,this.imageUrl,this.content,this.lock,this.technologyIds,this.labels,this.fromDate,this.toDate,this.metaType,this.meta,this.refId,this.refSource,this.refUrn});
    CreatePost.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        organizationId = json['organizationId'];
        type = JsonConverters.fromJson(json['type'],'PostType',context);
        categoryId = json['categoryId'];
        title = json['title'];
        url = json['url'];
        imageUrl = json['imageUrl'];
        content = json['content'];
        lock = json['lock'];
        technologyIds = JsonConverters.fromJson(json['technologyIds'],'List<int>',context);
        labels = JsonConverters.fromJson(json['labels'],'List<String>',context);
        fromDate = JsonConverters.fromJson(json['fromDate'],'DateTime',context);
        toDate = JsonConverters.fromJson(json['toDate'],'DateTime',context);
        metaType = json['metaType'];
        meta = json['meta'];
        refId = json['refId'];
        refSource = json['refSource'];
        refUrn = json['refUrn'];
        return this;
    }

    Map<String, dynamic> toJson() => {
        'organizationId': organizationId,
        'type': JsonConverters.toJson(type,'PostType',context),
        'categoryId': categoryId,
        'title': title,
        'url': url,
        'imageUrl': imageUrl,
        'content': content,
        'lock': lock,
        'technologyIds': JsonConverters.toJson(technologyIds,'List<int>',context),
        'labels': JsonConverters.toJson(labels,'List<String>',context),
        'fromDate': JsonConverters.toJson(fromDate,'DateTime',context),
        'toDate': JsonConverters.toJson(toDate,'DateTime',context),
        'metaType': metaType,
        'meta': meta,
        'refId': refId,
        'refSource': refSource,
        'refUrn': refUrn
    };

    createResponse() { return new CreatePostResponse(); }
    String getTypeName() { return "CreatePost"; }
    TypeContext context = _ctx;
}

// @Route("/posts/{Id}", "PUT")
class UpdatePost implements IReturn<UpdatePostResponse>, IConvertible
{
    int id;
    int organizationId;
    PostType type;
    int categoryId;
    String title;
    String url;
    String imageUrl;
    String content;
    bool lock;
    List<int> technologyIds;
    List<String> labels;
    DateTime fromDate;
    DateTime toDate;
    String metaType;
    String meta;

    UpdatePost({this.id,this.organizationId,this.type,this.categoryId,this.title,this.url,this.imageUrl,this.content,this.lock,this.technologyIds,this.labels,this.fromDate,this.toDate,this.metaType,this.meta});
    UpdatePost.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        id = json['id'];
        organizationId = json['organizationId'];
        type = JsonConverters.fromJson(json['type'],'PostType',context);
        categoryId = json['categoryId'];
        title = json['title'];
        url = json['url'];
        imageUrl = json['imageUrl'];
        content = json['content'];
        lock = json['lock'];
        technologyIds = JsonConverters.fromJson(json['technologyIds'],'List<int>',context);
        labels = JsonConverters.fromJson(json['labels'],'List<String>',context);
        fromDate = JsonConverters.fromJson(json['fromDate'],'DateTime',context);
        toDate = JsonConverters.fromJson(json['toDate'],'DateTime',context);
        metaType = json['metaType'];
        meta = json['meta'];
        return this;
    }

    Map<String, dynamic> toJson() => {
        'id': id,
        'organizationId': organizationId,
        'type': JsonConverters.toJson(type,'PostType',context),
        'categoryId': categoryId,
        'title': title,
        'url': url,
        'imageUrl': imageUrl,
        'content': content,
        'lock': lock,
        'technologyIds': JsonConverters.toJson(technologyIds,'List<int>',context),
        'labels': JsonConverters.toJson(labels,'List<String>',context),
        'fromDate': JsonConverters.toJson(fromDate,'DateTime',context),
        'toDate': JsonConverters.toJson(toDate,'DateTime',context),
        'metaType': metaType,
        'meta': meta
    };

    createResponse() { return new UpdatePostResponse(); }
    String getTypeName() { return "UpdatePost"; }
    TypeContext context = _ctx;
}

// @Route("/posts/{Id}", "DELETE")
class DeletePost implements IReturn<DeletePostResponse>, IConvertible
{
    int id;

    DeletePost({this.id});
    DeletePost.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        id = json['id'];
        return this;
    }

    Map<String, dynamic> toJson() => {
        'id': id
    };

    createResponse() { return new DeletePostResponse(); }
    String getTypeName() { return "DeletePost"; }
    TypeContext context = _ctx;
}

// @Route("/posts/{Id}/lock", "PUT")
class LockPost implements IReturnVoid, IConvertible
{
    int id;
    bool lock;
    String reason;

    LockPost({this.id,this.lock,this.reason});
    LockPost.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        id = json['id'];
        lock = json['lock'];
        reason = json['reason'];
        return this;
    }

    Map<String, dynamic> toJson() => {
        'id': id,
        'lock': lock,
        'reason': reason
    };

    createResponse() {}
    String getTypeName() { return "LockPost"; }
    TypeContext context = _ctx;
}

// @Route("/posts/{Id}/hide", "PUT")
class HidePost implements IReturnVoid, IConvertible
{
    int id;
    bool hide;
    String reason;

    HidePost({this.id,this.hide,this.reason});
    HidePost.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        id = json['id'];
        hide = json['hide'];
        reason = json['reason'];
        return this;
    }

    Map<String, dynamic> toJson() => {
        'id': id,
        'hide': hide,
        'reason': reason
    };

    createResponse() {}
    String getTypeName() { return "HidePost"; }
    TypeContext context = _ctx;
}

// @Route("/posts/{Id}/status/{Status}", "PUT")
class ChangeStatusPost implements IReturnVoid, IConvertible
{
    int id;
    String status;
    String reason;

    ChangeStatusPost({this.id,this.status,this.reason});
    ChangeStatusPost.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        id = json['id'];
        status = json['status'];
        reason = json['reason'];
        return this;
    }

    Map<String, dynamic> toJson() => {
        'id': id,
        'status': status,
        'reason': reason
    };

    createResponse() {}
    String getTypeName() { return "ChangeStatusPost"; }
    TypeContext context = _ctx;
}

// @Route("/posts/{PostId}/report/{Id}", "POST")
class ActionPostReport implements IReturnVoid, IConvertible
{
    int postId;
    int id;
    ReportAction reportAction;

    ActionPostReport({this.postId,this.id,this.reportAction});
    ActionPostReport.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        postId = json['postId'];
        id = json['id'];
        reportAction = JsonConverters.fromJson(json['reportAction'],'ReportAction',context);
        return this;
    }

    Map<String, dynamic> toJson() => {
        'postId': postId,
        'id': id,
        'reportAction': JsonConverters.toJson(reportAction,'ReportAction',context)
    };

    createResponse() {}
    String getTypeName() { return "ActionPostReport"; }
    TypeContext context = _ctx;
}

// @Route("/posts/{PostId}/comments", "POST")
class CreatePostComment implements IReturn<CreatePostCommentResponse>, IConvertible
{
    int postId;
    int replyId;
    String content;

    CreatePostComment({this.postId,this.replyId,this.content});
    CreatePostComment.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        postId = json['postId'];
        replyId = json['replyId'];
        content = json['content'];
        return this;
    }

    Map<String, dynamic> toJson() => {
        'postId': postId,
        'replyId': replyId,
        'content': content
    };

    createResponse() { return new CreatePostCommentResponse(); }
    String getTypeName() { return "CreatePostComment"; }
    TypeContext context = _ctx;
}

// @Route("/posts/{PostId}/comments/{Id}", "PUT")
class UpdatePostComment implements IReturn<UpdatePostCommentResponse>, IConvertible
{
    int id;
    int postId;
    String content;

    UpdatePostComment({this.id,this.postId,this.content});
    UpdatePostComment.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        id = json['id'];
        postId = json['postId'];
        content = json['content'];
        return this;
    }

    Map<String, dynamic> toJson() => {
        'id': id,
        'postId': postId,
        'content': content
    };

    createResponse() { return new UpdatePostCommentResponse(); }
    String getTypeName() { return "UpdatePostComment"; }
    TypeContext context = _ctx;
}

// @Route("/posts/{PostId}/comments/{Id}", "DELETE")
class DeletePostComment implements IReturn<DeletePostCommentResponse>, IConvertible
{
    int id;
    int postId;

    DeletePostComment({this.id,this.postId});
    DeletePostComment.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        id = json['id'];
        postId = json['postId'];
        return this;
    }

    Map<String, dynamic> toJson() => {
        'id': id,
        'postId': postId
    };

    createResponse() { return new DeletePostCommentResponse(); }
    String getTypeName() { return "DeletePostComment"; }
    TypeContext context = _ctx;
}

// @Route("/posts/{PostId}/comments/{PostCommentId}/report/{Id}", "POST")
class ActionPostCommentReport implements IReturnVoid, IConvertible
{
    int id;
    int postCommentId;
    int postId;
    ReportAction reportAction;

    ActionPostCommentReport({this.id,this.postCommentId,this.postId,this.reportAction});
    ActionPostCommentReport.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        id = json['id'];
        postCommentId = json['postCommentId'];
        postId = json['postId'];
        reportAction = JsonConverters.fromJson(json['reportAction'],'ReportAction',context);
        return this;
    }

    Map<String, dynamic> toJson() => {
        'id': id,
        'postCommentId': postCommentId,
        'postId': postId,
        'reportAction': JsonConverters.toJson(reportAction,'ReportAction',context)
    };

    createResponse() {}
    String getTypeName() { return "ActionPostCommentReport"; }
    TypeContext context = _ctx;
}

// @Route("/user/comments/votes")
class GetUserPostCommentVotes implements IReturn<GetUserPostCommentVotesResponse>, IConvertible
{
    int postId;

    GetUserPostCommentVotes({this.postId});
    GetUserPostCommentVotes.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        postId = json['postId'];
        return this;
    }

    Map<String, dynamic> toJson() => {
        'postId': postId
    };

    createResponse() { return new GetUserPostCommentVotesResponse(); }
    String getTypeName() { return "GetUserPostCommentVotes"; }
    TypeContext context = _ctx;
}

// @Route("/posts/{PostId}/comments/{Id}/pin", "UPDATE")
class PinPostComment implements IReturn<PinPostCommentResponse>, IConvertible
{
    int id;
    int postId;
    bool pin;

    PinPostComment({this.id,this.postId,this.pin});
    PinPostComment.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        id = json['id'];
        postId = json['postId'];
        pin = json['pin'];
        return this;
    }

    Map<String, dynamic> toJson() => {
        'id': id,
        'postId': postId,
        'pin': pin
    };

    createResponse() { return new PinPostCommentResponse(); }
    String getTypeName() { return "PinPostComment"; }
    TypeContext context = _ctx;
}

// @Route("/users/by-email")
class GetUsersByEmails implements IReturn<GetUsersByEmailsResponse>, IConvertible
{
    List<String> emails;

    GetUsersByEmails({this.emails});
    GetUsersByEmails.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        emails = JsonConverters.fromJson(json['emails'],'List<String>',context);
        return this;
    }

    Map<String, dynamic> toJson() => {
        'emails': JsonConverters.toJson(emails,'List<String>',context)
    };

    createResponse() { return new GetUsersByEmailsResponse(); }
    String getTypeName() { return "GetUsersByEmails"; }
    TypeContext context = _ctx;
}

// @Route("/user/posts/activity")
class GetUserPostActivity implements IReturn<GetUserPostActivityResponse>, IConvertible
{
    GetUserPostActivity();
    GetUserPostActivity.fromJson(Map<String, dynamic> json) : super();
    fromMap(Map<String, dynamic> json) {
        return this;
    }

    Map<String, dynamic> toJson() => {};
    createResponse() { return new GetUserPostActivityResponse(); }
    String getTypeName() { return "GetUserPostActivity"; }
    TypeContext context = _ctx;
}

// @Route("/user/organizations")
class GetUserOrganizations implements IReturn<GetUserOrganizationsResponse>, IConvertible
{
    GetUserOrganizations();
    GetUserOrganizations.fromJson(Map<String, dynamic> json) : super();
    fromMap(Map<String, dynamic> json) {
        return this;
    }

    Map<String, dynamic> toJson() => {};
    createResponse() { return new GetUserOrganizationsResponse(); }
    String getTypeName() { return "GetUserOrganizations"; }
    TypeContext context = _ctx;
}

// @Route("/posts/{Id}/vote", "PUT")
class UserPostVote implements IReturn<UserPostVoteResponse>, IConvertible
{
    int id;
    int weight;

    UserPostVote({this.id,this.weight});
    UserPostVote.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        id = json['id'];
        weight = json['weight'];
        return this;
    }

    Map<String, dynamic> toJson() => {
        'id': id,
        'weight': weight
    };

    createResponse() { return new UserPostVoteResponse(); }
    String getTypeName() { return "UserPostVote"; }
    TypeContext context = _ctx;
}

// @Route("/posts/{Id}/favorite", "PUT")
class UserPostFavorite implements IReturn<UserPostFavoriteResponse>, IConvertible
{
    int id;

    UserPostFavorite({this.id});
    UserPostFavorite.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        id = json['id'];
        return this;
    }

    Map<String, dynamic> toJson() => {
        'id': id
    };

    createResponse() { return new UserPostFavoriteResponse(); }
    String getTypeName() { return "UserPostFavorite"; }
    TypeContext context = _ctx;
}

// @Route("/posts/{Id}/report", "PUT")
class UserPostReport implements IReturn<UserPostReportResponse>, IConvertible
{
    int id;
    FlagType flagType;
    String reportNotes;

    UserPostReport({this.id,this.flagType,this.reportNotes});
    UserPostReport.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        id = json['id'];
        flagType = JsonConverters.fromJson(json['flagType'],'FlagType',context);
        reportNotes = json['reportNotes'];
        return this;
    }

    Map<String, dynamic> toJson() => {
        'id': id,
        'flagType': JsonConverters.toJson(flagType,'FlagType',context),
        'reportNotes': reportNotes
    };

    createResponse() { return new UserPostReportResponse(); }
    String getTypeName() { return "UserPostReport"; }
    TypeContext context = _ctx;
}

// @Route("/posts/{PostId}/comments/{Id}", "GET")
class UserPostCommentVote implements IReturn<UserPostCommentVoteResponse>, IConvertible
{
    int id;
    int postId;
    int weight;

    UserPostCommentVote({this.id,this.postId,this.weight});
    UserPostCommentVote.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        id = json['id'];
        postId = json['postId'];
        weight = json['weight'];
        return this;
    }

    Map<String, dynamic> toJson() => {
        'id': id,
        'postId': postId,
        'weight': weight
    };

    createResponse() { return new UserPostCommentVoteResponse(); }
    String getTypeName() { return "UserPostCommentVote"; }
    TypeContext context = _ctx;
}

// @Route("/posts/{PostId}/comments/{Id}/report", "PUT")
class UserPostCommentReport implements IReturn<UserPostCommentReportResponse>, IConvertible
{
    int id;
    int postId;
    FlagType flagType;
    String reportNotes;

    UserPostCommentReport({this.id,this.postId,this.flagType,this.reportNotes});
    UserPostCommentReport.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        id = json['id'];
        postId = json['postId'];
        flagType = JsonConverters.fromJson(json['flagType'],'FlagType',context);
        reportNotes = json['reportNotes'];
        return this;
    }

    Map<String, dynamic> toJson() => {
        'id': id,
        'postId': postId,
        'flagType': JsonConverters.toJson(flagType,'FlagType',context),
        'reportNotes': reportNotes
    };

    createResponse() { return new UserPostCommentReportResponse(); }
    String getTypeName() { return "UserPostCommentReport"; }
    TypeContext context = _ctx;
}

// @Route("/prerender/{Path*}", "PUT")
class StorePreRender implements IReturnVoid, IConvertible
{
    String path;

    StorePreRender({this.path});
    StorePreRender.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        path = json['path'];
        return this;
    }

    Map<String, dynamic> toJson() => {
        'path': path
    };

    createResponse() {}
    String getTypeName() { return "StorePreRender"; }
    TypeContext context = _ctx;
}

// @Route("/prerender/{Path*}", "GET")
class GetPreRender implements IReturn<String>, IConvertible
{
    String path;

    GetPreRender({this.path});
    GetPreRender.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        path = json['path'];
        return this;
    }

    Map<String, dynamic> toJson() => {
        'path': path
    };

    createResponse() { return ""; }
    String getTypeName() { return "GetPreRender"; }
    TypeContext context = _ctx;
}

// @Route("/my-session")
class SessionInfo implements IReturn<SessionInfoResponse>, IConvertible
{
    SessionInfo();
    SessionInfo.fromJson(Map<String, dynamic> json) : super();
    fromMap(Map<String, dynamic> json) {
        return this;
    }

    Map<String, dynamic> toJson() => {};
    createResponse() { return new SessionInfoResponse(); }
    String getTypeName() { return "SessionInfo"; }
    TypeContext context = _ctx;
}

// @Route("/orgs/{OrganizationId}/subscribe", "PUT")
class SubscribeToOrganization implements IReturnVoid, IConvertible
{
    int organizationId;
    List<PostType> postTypes;
    Frequency frequency;

    SubscribeToOrganization({this.organizationId,this.postTypes,this.frequency});
    SubscribeToOrganization.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        organizationId = json['organizationId'];
        postTypes = JsonConverters.fromJson(json['postTypes'],'List<PostType>',context);
        frequency = JsonConverters.fromJson(json['frequency'],'Frequency',context);
        return this;
    }

    Map<String, dynamic> toJson() => {
        'organizationId': organizationId,
        'postTypes': JsonConverters.toJson(postTypes,'List<PostType>',context),
        'frequency': JsonConverters.toJson(frequency,'Frequency',context)
    };

    createResponse() {}
    String getTypeName() { return "SubscribeToOrganization"; }
    TypeContext context = _ctx;
}

// @Route("/posts/{PostId}/subscribe", "PUT")
class SubscribeToPost implements IReturnVoid, IConvertible
{
    int postId;

    SubscribeToPost({this.postId});
    SubscribeToPost.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        postId = json['postId'];
        return this;
    }

    Map<String, dynamic> toJson() => {
        'postId': postId
    };

    createResponse() {}
    String getTypeName() { return "SubscribeToPost"; }
    TypeContext context = _ctx;
}

// @Route("/orgs/{OrganizationId}/subscribe", "DELETE")
class DeleteOrganizationSubscription implements IReturnVoid, IConvertible
{
    int organizationId;

    DeleteOrganizationSubscription({this.organizationId});
    DeleteOrganizationSubscription.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        organizationId = json['organizationId'];
        return this;
    }

    Map<String, dynamic> toJson() => {
        'organizationId': organizationId
    };

    createResponse() {}
    String getTypeName() { return "DeleteOrganizationSubscription"; }
    TypeContext context = _ctx;
}

// @Route("/posts/{PostId}/subscribe", "DELETE")
class DeletePostSubscription implements IReturnVoid, IConvertible
{
    int postId;

    DeletePostSubscription({this.postId});
    DeletePostSubscription.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        postId = json['postId'];
        return this;
    }

    Map<String, dynamic> toJson() => {
        'postId': postId
    };

    createResponse() {}
    String getTypeName() { return "DeletePostSubscription"; }
    TypeContext context = _ctx;
}

// @Route("/technology/{Slug}/previous-versions", "GET")
class GetTechnologyPreviousVersions implements IReturn<GetTechnologyPreviousVersionsResponse>, IConvertible
{
    String slug;

    GetTechnologyPreviousVersions({this.slug});
    GetTechnologyPreviousVersions.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        slug = json['slug'];
        return this;
    }

    Map<String, dynamic> toJson() => {
        'slug': slug
    };

    createResponse() { return new GetTechnologyPreviousVersionsResponse(); }
    String getTypeName() { return "GetTechnologyPreviousVersions"; }
    TypeContext context = _ctx;
}

// @Route("/technology", "GET")
class GetAllTechnologies implements IReturn<GetAllTechnologiesResponse>, IConvertible
{
    GetAllTechnologies();
    GetAllTechnologies.fromJson(Map<String, dynamic> json) : super();
    fromMap(Map<String, dynamic> json) {
        return this;
    }

    Map<String, dynamic> toJson() => {};
    createResponse() { return new GetAllTechnologiesResponse(); }
    String getTypeName() { return "GetAllTechnologies"; }
    TypeContext context = _ctx;
}

// @Route("/technology/search")
// @AutoQueryViewer(DefaultSearchField="Tier", DefaultSearchText="Data", DefaultSearchType="=", Description="Explore different Technologies", IconUrl="octicon:database", Title="Find Technologies")
class FindTechnologies extends QueryDb1<Technology> implements IReturn<QueryResponse<Technology>>, IConvertible
{
    String name;
    String nameContains;

    FindTechnologies({this.name,this.nameContains});
    FindTechnologies.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        super.fromMap(json);
        name = json['name'];
        nameContains = json['nameContains'];
        return this;
    }

    Map<String, dynamic> toJson() => super.toJson()..addAll({
        'name': name,
        'nameContains': nameContains
    });

    createResponse() { return new QueryResponse<Technology>(); }
    String getTypeName() { return "FindTechnologies"; }
    TypeContext context = _ctx;
}

// @Route("/technology/query")
class QueryTechnology extends QueryDb1<Technology> implements IReturn<QueryResponse<Technology>>, IConvertible
{
    QueryTechnology();
    QueryTechnology.fromJson(Map<String, dynamic> json) : super.fromJson(json);
    fromMap(Map<String, dynamic> json) {
        super.fromMap(json);
        return this;
    }

    Map<String, dynamic> toJson() => super.toJson();
    createResponse() { return new QueryResponse<Technology>(); }
    String getTypeName() { return "QueryTechnology"; }
    TypeContext context = _ctx;
}

// @Route("/technology/{Slug}")
class GetTechnology implements IReturn<GetTechnologyResponse>, IRegisterStats, IConvertible
{
    String slug;

    GetTechnology({this.slug});
    GetTechnology.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        slug = json['slug'];
        return this;
    }

    Map<String, dynamic> toJson() => {
        'slug': slug
    };

    createResponse() { return new GetTechnologyResponse(); }
    String getTypeName() { return "GetTechnology"; }
    TypeContext context = _ctx;
}

// @Route("/technology/{Slug}/favorites")
class GetTechnologyFavoriteDetails implements IReturn<GetTechnologyFavoriteDetailsResponse>, IConvertible
{
    String slug;

    GetTechnologyFavoriteDetails({this.slug});
    GetTechnologyFavoriteDetails.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        slug = json['slug'];
        return this;
    }

    Map<String, dynamic> toJson() => {
        'slug': slug
    };

    createResponse() { return new GetTechnologyFavoriteDetailsResponse(); }
    String getTypeName() { return "GetTechnologyFavoriteDetails"; }
    TypeContext context = _ctx;
}

// @Route("/technology", "POST")
class CreateTechnology implements IReturn<CreateTechnologyResponse>, IConvertible
{
    String name;
    String slug;
    String vendorName;
    String vendorUrl;
    String productUrl;
    String logoUrl;
    String description;
    bool isLocked;
    TechnologyTier tier;

    CreateTechnology({this.name,this.slug,this.vendorName,this.vendorUrl,this.productUrl,this.logoUrl,this.description,this.isLocked,this.tier});
    CreateTechnology.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        name = json['name'];
        slug = json['slug'];
        vendorName = json['vendorName'];
        vendorUrl = json['vendorUrl'];
        productUrl = json['productUrl'];
        logoUrl = json['logoUrl'];
        description = json['description'];
        isLocked = json['isLocked'];
        tier = JsonConverters.fromJson(json['tier'],'TechnologyTier',context);
        return this;
    }

    Map<String, dynamic> toJson() => {
        'name': name,
        'slug': slug,
        'vendorName': vendorName,
        'vendorUrl': vendorUrl,
        'productUrl': productUrl,
        'logoUrl': logoUrl,
        'description': description,
        'isLocked': isLocked,
        'tier': JsonConverters.toJson(tier,'TechnologyTier',context)
    };

    createResponse() { return new CreateTechnologyResponse(); }
    String getTypeName() { return "CreateTechnology"; }
    TypeContext context = _ctx;
}

// @Route("/technology/{Id}", "PUT")
class UpdateTechnology implements IReturn<UpdateTechnologyResponse>, IConvertible
{
    int id;
    String name;
    String vendorName;
    String vendorUrl;
    String productUrl;
    String logoUrl;
    String description;
    bool isLocked;
    TechnologyTier tier;

    UpdateTechnology({this.id,this.name,this.vendorName,this.vendorUrl,this.productUrl,this.logoUrl,this.description,this.isLocked,this.tier});
    UpdateTechnology.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        id = json['id'];
        name = json['name'];
        vendorName = json['vendorName'];
        vendorUrl = json['vendorUrl'];
        productUrl = json['productUrl'];
        logoUrl = json['logoUrl'];
        description = json['description'];
        isLocked = json['isLocked'];
        tier = JsonConverters.fromJson(json['tier'],'TechnologyTier',context);
        return this;
    }

    Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'vendorName': vendorName,
        'vendorUrl': vendorUrl,
        'productUrl': productUrl,
        'logoUrl': logoUrl,
        'description': description,
        'isLocked': isLocked,
        'tier': JsonConverters.toJson(tier,'TechnologyTier',context)
    };

    createResponse() { return new UpdateTechnologyResponse(); }
    String getTypeName() { return "UpdateTechnology"; }
    TypeContext context = _ctx;
}

// @Route("/technology/{Id}", "DELETE")
class DeleteTechnology implements IReturn<DeleteTechnologyResponse>, IConvertible
{
    int id;

    DeleteTechnology({this.id});
    DeleteTechnology.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        id = json['id'];
        return this;
    }

    Map<String, dynamic> toJson() => {
        'id': id
    };

    createResponse() { return new DeleteTechnologyResponse(); }
    String getTypeName() { return "DeleteTechnology"; }
    TypeContext context = _ctx;
}

// @Route("/techstacks/{Slug}/previous-versions", "GET")
class GetTechnologyStackPreviousVersions implements IReturn<GetTechnologyStackPreviousVersionsResponse>, IConvertible
{
    String slug;

    GetTechnologyStackPreviousVersions({this.slug});
    GetTechnologyStackPreviousVersions.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        slug = json['slug'];
        return this;
    }

    Map<String, dynamic> toJson() => {
        'slug': slug
    };

    createResponse() { return new GetTechnologyStackPreviousVersionsResponse(); }
    String getTypeName() { return "GetTechnologyStackPreviousVersions"; }
    TypeContext context = _ctx;
}

// @Route("/pagestats/{Type}/{Slug}")
class GetPageStats implements IReturn<GetPageStatsResponse>, IConvertible
{
    String type;
    String slug;
    int id;

    GetPageStats({this.type,this.slug,this.id});
    GetPageStats.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        type = json['type'];
        slug = json['slug'];
        id = json['id'];
        return this;
    }

    Map<String, dynamic> toJson() => {
        'type': type,
        'slug': slug,
        'id': id
    };

    createResponse() { return new GetPageStatsResponse(); }
    String getTypeName() { return "GetPageStats"; }
    TypeContext context = _ctx;
}

// @Route("/cache/clear")
class ClearCache implements IReturn<String>, IConvertible
{
    ClearCache();
    ClearCache.fromJson(Map<String, dynamic> json) : super();
    fromMap(Map<String, dynamic> json) {
        return this;
    }

    Map<String, dynamic> toJson() => {};
    createResponse() { return ""; }
    String getTypeName() { return "ClearCache"; }
    TypeContext context = _ctx;
}

// @Route("/tasks/hourly")
class HourlyTask implements IReturn<HourlyTaskResponse>, IConvertible
{
    bool force;

    HourlyTask({this.force});
    HourlyTask.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        force = json['force'];
        return this;
    }

    Map<String, dynamic> toJson() => {
        'force': force
    };

    createResponse() { return new HourlyTaskResponse(); }
    String getTypeName() { return "HourlyTask"; }
    TypeContext context = _ctx;
}

// @Route("/techstacks/search")
// @AutoQueryViewer(DefaultSearchField="Description", DefaultSearchText="ServiceStack", DefaultSearchType="Contains", Description="Explore different Technology Stacks", IconUrl="material-icons:cloud", Title="Find Technology Stacks")
class FindTechStacks extends QueryDb1<TechnologyStack> implements IReturn<QueryResponse<TechnologyStack>>, IConvertible
{
    String nameContains;

    FindTechStacks({this.nameContains});
    FindTechStacks.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        super.fromMap(json);
        nameContains = json['nameContains'];
        return this;
    }

    Map<String, dynamic> toJson() => super.toJson()..addAll({
        'nameContains': nameContains
    });

    createResponse() { return new QueryResponse<TechnologyStack>(); }
    String getTypeName() { return "FindTechStacks"; }
    TypeContext context = _ctx;
}

// @Route("/techstacks/query")
class QueryTechStacks extends QueryDb1<TechnologyStack> implements IReturn<QueryResponse<TechnologyStack>>, IConvertible
{
    QueryTechStacks();
    QueryTechStacks.fromJson(Map<String, dynamic> json) : super.fromJson(json);
    fromMap(Map<String, dynamic> json) {
        super.fromMap(json);
        return this;
    }

    Map<String, dynamic> toJson() => super.toJson();
    createResponse() { return new QueryResponse<TechnologyStack>(); }
    String getTypeName() { return "QueryTechStacks"; }
    TypeContext context = _ctx;
}

// @Route("/overview")
class Overview implements IReturn<OverviewResponse>, IConvertible
{
    bool reload;

    Overview({this.reload});
    Overview.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        reload = json['reload'];
        return this;
    }

    Map<String, dynamic> toJson() => {
        'reload': reload
    };

    createResponse() { return new OverviewResponse(); }
    String getTypeName() { return "Overview"; }
    TypeContext context = _ctx;
}

// @Route("/app-overview")
class AppOverview implements IReturn<AppOverviewResponse>, IConvertible
{
    bool reload;

    AppOverview({this.reload});
    AppOverview.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        reload = json['reload'];
        return this;
    }

    Map<String, dynamic> toJson() => {
        'reload': reload
    };

    createResponse() { return new AppOverviewResponse(); }
    String getTypeName() { return "AppOverview"; }
    TypeContext context = _ctx;
}

// @Route("/techstacks", "GET")
class GetAllTechnologyStacks implements IReturn<GetAllTechnologyStacksResponse>, IConvertible
{
    GetAllTechnologyStacks();
    GetAllTechnologyStacks.fromJson(Map<String, dynamic> json) : super();
    fromMap(Map<String, dynamic> json) {
        return this;
    }

    Map<String, dynamic> toJson() => {};
    createResponse() { return new GetAllTechnologyStacksResponse(); }
    String getTypeName() { return "GetAllTechnologyStacks"; }
    TypeContext context = _ctx;
}

// @Route("/techstacks/{Slug}", "GET")
class GetTechnologyStack implements IReturn<GetTechnologyStackResponse>, IRegisterStats, IConvertible
{
    String slug;

    GetTechnologyStack({this.slug});
    GetTechnologyStack.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        slug = json['slug'];
        return this;
    }

    Map<String, dynamic> toJson() => {
        'slug': slug
    };

    createResponse() { return new GetTechnologyStackResponse(); }
    String getTypeName() { return "GetTechnologyStack"; }
    TypeContext context = _ctx;
}

// @Route("/techstacks/{Slug}/favorites")
class GetTechnologyStackFavoriteDetails implements IReturn<GetTechnologyStackFavoriteDetailsResponse>, IConvertible
{
    String slug;

    GetTechnologyStackFavoriteDetails({this.slug});
    GetTechnologyStackFavoriteDetails.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        slug = json['slug'];
        return this;
    }

    Map<String, dynamic> toJson() => {
        'slug': slug
    };

    createResponse() { return new GetTechnologyStackFavoriteDetailsResponse(); }
    String getTypeName() { return "GetTechnologyStackFavoriteDetails"; }
    TypeContext context = _ctx;
}

// @Route("/config")
class GetConfig implements IReturn<GetConfigResponse>, IConvertible
{
    GetConfig();
    GetConfig.fromJson(Map<String, dynamic> json) : super();
    fromMap(Map<String, dynamic> json) {
        return this;
    }

    Map<String, dynamic> toJson() => {};
    createResponse() { return new GetConfigResponse(); }
    String getTypeName() { return "GetConfig"; }
    TypeContext context = _ctx;
}

// @Route("/techstacks", "POST")
class CreateTechnologyStack implements IReturn<CreateTechnologyStackResponse>, IConvertible
{
    String name;
    String slug;
    String vendorName;
    String appUrl;
    String screenshotUrl;
    String description;
    String details;
    bool isLocked;
    List<int> technologyIds;

    CreateTechnologyStack({this.name,this.slug,this.vendorName,this.appUrl,this.screenshotUrl,this.description,this.details,this.isLocked,this.technologyIds});
    CreateTechnologyStack.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        name = json['name'];
        slug = json['slug'];
        vendorName = json['vendorName'];
        appUrl = json['appUrl'];
        screenshotUrl = json['screenshotUrl'];
        description = json['description'];
        details = json['details'];
        isLocked = json['isLocked'];
        technologyIds = JsonConverters.fromJson(json['technologyIds'],'List<int>',context);
        return this;
    }

    Map<String, dynamic> toJson() => {
        'name': name,
        'slug': slug,
        'vendorName': vendorName,
        'appUrl': appUrl,
        'screenshotUrl': screenshotUrl,
        'description': description,
        'details': details,
        'isLocked': isLocked,
        'technologyIds': JsonConverters.toJson(technologyIds,'List<int>',context)
    };

    createResponse() { return new CreateTechnologyStackResponse(); }
    String getTypeName() { return "CreateTechnologyStack"; }
    TypeContext context = _ctx;
}

// @Route("/techstacks/{Id}", "PUT")
class UpdateTechnologyStack implements IReturn<UpdateTechnologyStackResponse>, IConvertible
{
    int id;
    String name;
    String vendorName;
    String appUrl;
    String screenshotUrl;
    String description;
    String details;
    bool isLocked;
    List<int> technologyIds;

    UpdateTechnologyStack({this.id,this.name,this.vendorName,this.appUrl,this.screenshotUrl,this.description,this.details,this.isLocked,this.technologyIds});
    UpdateTechnologyStack.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        id = json['id'];
        name = json['name'];
        vendorName = json['vendorName'];
        appUrl = json['appUrl'];
        screenshotUrl = json['screenshotUrl'];
        description = json['description'];
        details = json['details'];
        isLocked = json['isLocked'];
        technologyIds = JsonConverters.fromJson(json['technologyIds'],'List<int>',context);
        return this;
    }

    Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'vendorName': vendorName,
        'appUrl': appUrl,
        'screenshotUrl': screenshotUrl,
        'description': description,
        'details': details,
        'isLocked': isLocked,
        'technologyIds': JsonConverters.toJson(technologyIds,'List<int>',context)
    };

    createResponse() { return new UpdateTechnologyStackResponse(); }
    String getTypeName() { return "UpdateTechnologyStack"; }
    TypeContext context = _ctx;
}

// @Route("/techstacks/{Id}", "DELETE")
class DeleteTechnologyStack implements IReturn<DeleteTechnologyStackResponse>, IConvertible
{
    int id;

    DeleteTechnologyStack({this.id});
    DeleteTechnologyStack.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        id = json['id'];
        return this;
    }

    Map<String, dynamic> toJson() => {
        'id': id
    };

    createResponse() { return new DeleteTechnologyStackResponse(); }
    String getTypeName() { return "DeleteTechnologyStack"; }
    TypeContext context = _ctx;
}

// @Route("/favorites/techtacks", "GET")
class GetFavoriteTechStack implements IReturn<GetFavoriteTechStackResponse>, IConvertible
{
    int technologyStackId;

    GetFavoriteTechStack({this.technologyStackId});
    GetFavoriteTechStack.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        technologyStackId = json['technologyStackId'];
        return this;
    }

    Map<String, dynamic> toJson() => {
        'technologyStackId': technologyStackId
    };

    createResponse() { return new GetFavoriteTechStackResponse(); }
    String getTypeName() { return "GetFavoriteTechStack"; }
    TypeContext context = _ctx;
}

// @Route("/favorites/techtacks/{TechnologyStackId}", "PUT")
class AddFavoriteTechStack implements IReturn<FavoriteTechStackResponse>, IConvertible
{
    int technologyStackId;

    AddFavoriteTechStack({this.technologyStackId});
    AddFavoriteTechStack.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        technologyStackId = json['technologyStackId'];
        return this;
    }

    Map<String, dynamic> toJson() => {
        'technologyStackId': technologyStackId
    };

    createResponse() { return new FavoriteTechStackResponse(); }
    String getTypeName() { return "AddFavoriteTechStack"; }
    TypeContext context = _ctx;
}

// @Route("/favorites/techtacks/{TechnologyStackId}", "DELETE")
class RemoveFavoriteTechStack implements IReturn<FavoriteTechStackResponse>, IConvertible
{
    int technologyStackId;

    RemoveFavoriteTechStack({this.technologyStackId});
    RemoveFavoriteTechStack.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        technologyStackId = json['technologyStackId'];
        return this;
    }

    Map<String, dynamic> toJson() => {
        'technologyStackId': technologyStackId
    };

    createResponse() { return new FavoriteTechStackResponse(); }
    String getTypeName() { return "RemoveFavoriteTechStack"; }
    TypeContext context = _ctx;
}

// @Route("/favorites/technology", "GET")
class GetFavoriteTechnologies implements IReturn<GetFavoriteTechnologiesResponse>, IConvertible
{
    int technologyId;

    GetFavoriteTechnologies({this.technologyId});
    GetFavoriteTechnologies.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        technologyId = json['technologyId'];
        return this;
    }

    Map<String, dynamic> toJson() => {
        'technologyId': technologyId
    };

    createResponse() { return new GetFavoriteTechnologiesResponse(); }
    String getTypeName() { return "GetFavoriteTechnologies"; }
    TypeContext context = _ctx;
}

// @Route("/favorites/technology/{TechnologyId}", "PUT")
class AddFavoriteTechnology implements IReturn<FavoriteTechnologyResponse>, IConvertible
{
    int technologyId;

    AddFavoriteTechnology({this.technologyId});
    AddFavoriteTechnology.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        technologyId = json['technologyId'];
        return this;
    }

    Map<String, dynamic> toJson() => {
        'technologyId': technologyId
    };

    createResponse() { return new FavoriteTechnologyResponse(); }
    String getTypeName() { return "AddFavoriteTechnology"; }
    TypeContext context = _ctx;
}

// @Route("/favorites/technology/{TechnologyId}", "DELETE")
class RemoveFavoriteTechnology implements IReturn<FavoriteTechnologyResponse>, IConvertible
{
    int technologyId;

    RemoveFavoriteTechnology({this.technologyId});
    RemoveFavoriteTechnology.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        technologyId = json['technologyId'];
        return this;
    }

    Map<String, dynamic> toJson() => {
        'technologyId': technologyId
    };

    createResponse() { return new FavoriteTechnologyResponse(); }
    String getTypeName() { return "RemoveFavoriteTechnology"; }
    TypeContext context = _ctx;
}

// @Route("/my-feed")
class GetUserFeed implements IReturn<GetUserFeedResponse>, IConvertible
{
    GetUserFeed();
    GetUserFeed.fromJson(Map<String, dynamic> json) : super();
    fromMap(Map<String, dynamic> json) {
        return this;
    }

    Map<String, dynamic> toJson() => {};
    createResponse() { return new GetUserFeedResponse(); }
    String getTypeName() { return "GetUserFeed"; }
    TypeContext context = _ctx;
}

// @Route("/users/karma", "GET")
class GetUsersKarma implements IReturn<GetUsersKarmaResponse>, IConvertible
{
    List<int> userIds;

    GetUsersKarma({this.userIds});
    GetUsersKarma.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        userIds = JsonConverters.fromJson(json['userIds'],'List<int>',context);
        return this;
    }

    Map<String, dynamic> toJson() => {
        'userIds': JsonConverters.toJson(userIds,'List<int>',context)
    };

    createResponse() { return new GetUsersKarmaResponse(); }
    String getTypeName() { return "GetUsersKarma"; }
    TypeContext context = _ctx;
}

// @Route("/userinfo/{UserName}")
class GetUserInfo implements IReturn<GetUserInfoResponse>, IConvertible
{
    String userName;

    GetUserInfo({this.userName});
    GetUserInfo.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        userName = json['userName'];
        return this;
    }

    Map<String, dynamic> toJson() => {
        'userName': userName
    };

    createResponse() { return new GetUserInfoResponse(); }
    String getTypeName() { return "GetUserInfo"; }
    TypeContext context = _ctx;
}

// @Route("/users/{UserName}/avatar", "GET")
class UserAvatar implements IConvertible
{
    String userName;

    UserAvatar({this.userName});
    UserAvatar.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        userName = json['userName'];
        return this;
    }

    Map<String, dynamic> toJson() => {
        'userName': userName
    };

    TypeContext context = _ctx;
}

// @Route("/mq/start")
class MqStart implements IReturn<String>, IConvertible
{
    MqStart();
    MqStart.fromJson(Map<String, dynamic> json) : super();
    fromMap(Map<String, dynamic> json) {
        return this;
    }

    Map<String, dynamic> toJson() => {};
    createResponse() { return ""; }
    String getTypeName() { return "MqStart"; }
    TypeContext context = _ctx;
}

// @Route("/mq/stop")
class MqStop implements IReturn<String>, IConvertible
{
    MqStop();
    MqStop.fromJson(Map<String, dynamic> json) : super();
    fromMap(Map<String, dynamic> json) {
        return this;
    }

    Map<String, dynamic> toJson() => {};
    createResponse() { return ""; }
    String getTypeName() { return "MqStop"; }
    TypeContext context = _ctx;
}

// @Route("/mq/stats")
class MqStats implements IReturn<String>, IConvertible
{
    MqStats();
    MqStats.fromJson(Map<String, dynamic> json) : super();
    fromMap(Map<String, dynamic> json) {
        return this;
    }

    Map<String, dynamic> toJson() => {};
    createResponse() { return ""; }
    String getTypeName() { return "MqStats"; }
    TypeContext context = _ctx;
}

// @Route("/mq/status")
class MqStatus implements IReturn<String>, IConvertible
{
    MqStatus();
    MqStatus.fromJson(Map<String, dynamic> json) : super();
    fromMap(Map<String, dynamic> json) {
        return this;
    }

    Map<String, dynamic> toJson() => {};
    createResponse() { return ""; }
    String getTypeName() { return "MqStatus"; }
    TypeContext context = _ctx;
}

// @Route("/sync/discourse/{Site}")
class SyncDiscourseSite implements IReturn<SyncDiscourseSiteResponse>, IConvertible
{
    String site;

    SyncDiscourseSite({this.site});
    SyncDiscourseSite.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        site = json['site'];
        return this;
    }

    Map<String, dynamic> toJson() => {
        'site': site
    };

    createResponse() { return new SyncDiscourseSiteResponse(); }
    String getTypeName() { return "SyncDiscourseSite"; }
    TypeContext context = _ctx;
}

// @Route("/admin/technology/{TechnologyId}/logo")
class LogoUrlApproval implements IReturn<LogoUrlApprovalResponse>, IConvertible
{
    int technologyId;
    bool approved;

    LogoUrlApproval({this.technologyId,this.approved});
    LogoUrlApproval.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        technologyId = json['technologyId'];
        approved = json['approved'];
        return this;
    }

    Map<String, dynamic> toJson() => {
        'technologyId': technologyId,
        'approved': approved
    };

    createResponse() { return new LogoUrlApprovalResponse(); }
    String getTypeName() { return "LogoUrlApproval"; }
    TypeContext context = _ctx;
}

// @Route("/admin/techstacks/{TechnologyStackId}/lock")
class LockTechStack implements IReturn<LockStackResponse>, IConvertible
{
    int technologyStackId;
    bool isLocked;

    LockTechStack({this.technologyStackId,this.isLocked});
    LockTechStack.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        technologyStackId = json['technologyStackId'];
        isLocked = json['isLocked'];
        return this;
    }

    Map<String, dynamic> toJson() => {
        'technologyStackId': technologyStackId,
        'isLocked': isLocked
    };

    createResponse() { return new LockStackResponse(); }
    String getTypeName() { return "LockTechStack"; }
    TypeContext context = _ctx;
}

// @Route("/admin/technology/{TechnologyId}/lock")
class LockTech implements IReturn<LockStackResponse>, IConvertible
{
    int technologyId;
    bool isLocked;

    LockTech({this.technologyId,this.isLocked});
    LockTech.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        technologyId = json['technologyId'];
        isLocked = json['isLocked'];
        return this;
    }

    Map<String, dynamic> toJson() => {
        'technologyId': technologyId,
        'isLocked': isLocked
    };

    createResponse() { return new LockStackResponse(); }
    String getTypeName() { return "LockTech"; }
    TypeContext context = _ctx;
}

// @Route("/email/post/{PostId}")
class EmailTest implements IReturn<EmailTestRespoonse>, IConvertible
{
    int postId;

    EmailTest({this.postId});
    EmailTest.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        postId = json['postId'];
        return this;
    }

    Map<String, dynamic> toJson() => {
        'postId': postId
    };

    createResponse() { return new EmailTestRespoonse(); }
    String getTypeName() { return "EmailTest"; }
    TypeContext context = _ctx;
}

class ImportUser implements IReturn<ImportUserResponse>, IConvertible
{
    String userName;
    String email;
    String firstName;
    String lastName;
    String displayName;
    String company;
    String refSource;
    int refId;
    String refIdStr;
    String refUrn;
    String defaultProfileUrl;
    Map<String,String> meta;

    ImportUser({this.userName,this.email,this.firstName,this.lastName,this.displayName,this.company,this.refSource,this.refId,this.refIdStr,this.refUrn,this.defaultProfileUrl,this.meta});
    ImportUser.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        userName = json['userName'];
        email = json['email'];
        firstName = json['firstName'];
        lastName = json['lastName'];
        displayName = json['displayName'];
        company = json['company'];
        refSource = json['refSource'];
        refId = json['refId'];
        refIdStr = json['refIdStr'];
        refUrn = json['refUrn'];
        defaultProfileUrl = json['defaultProfileUrl'];
        meta = JsonConverters.toStringMap(json['meta']);
        return this;
    }

    Map<String, dynamic> toJson() => {
        'userName': userName,
        'email': email,
        'firstName': firstName,
        'lastName': lastName,
        'displayName': displayName,
        'company': company,
        'refSource': refSource,
        'refId': refId,
        'refIdStr': refIdStr,
        'refUrn': refUrn,
        'defaultProfileUrl': defaultProfileUrl,
        'meta': meta
    };

    createResponse() { return new ImportUserResponse(); }
    String getTypeName() { return "ImportUser"; }
    TypeContext context = _ctx;
}

// @Route("/import/uservoice/suggestion")
class ImportUserVoiceSuggestion implements IReturn<ImportUserVoiceSuggestionResponse>, IConvertible
{
    int organizationId;
    String url;
    int id;
    int topicId;
    String state;
    String title;
    String slug;
    String category;
    String text;
    String formattedText;
    int voteCount;
    DateTime closedAt;
    String statusKey;
    String statusHexColor;
    UserVoiceUser statusChangedBy;
    UserVoiceUser creator;
    UserVoiceComment response;
    DateTime createdAt;
    DateTime updatedAt;

    ImportUserVoiceSuggestion({this.organizationId,this.url,this.id,this.topicId,this.state,this.title,this.slug,this.category,this.text,this.formattedText,this.voteCount,this.closedAt,this.statusKey,this.statusHexColor,this.statusChangedBy,this.creator,this.response,this.createdAt,this.updatedAt});
    ImportUserVoiceSuggestion.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        organizationId = json['organizationId'];
        url = json['url'];
        id = json['id'];
        topicId = json['topicId'];
        state = json['state'];
        title = json['title'];
        slug = json['slug'];
        category = json['category'];
        text = json['text'];
        formattedText = json['formattedText'];
        voteCount = json['voteCount'];
        closedAt = JsonConverters.fromJson(json['closedAt'],'DateTime',context);
        statusKey = json['statusKey'];
        statusHexColor = json['statusHexColor'];
        statusChangedBy = JsonConverters.fromJson(json['statusChangedBy'],'UserVoiceUser',context);
        creator = JsonConverters.fromJson(json['creator'],'UserVoiceUser',context);
        response = JsonConverters.fromJson(json['response'],'UserVoiceComment',context);
        createdAt = JsonConverters.fromJson(json['createdAt'],'DateTime',context);
        updatedAt = JsonConverters.fromJson(json['updatedAt'],'DateTime',context);
        return this;
    }

    Map<String, dynamic> toJson() => {
        'organizationId': organizationId,
        'url': url,
        'id': id,
        'topicId': topicId,
        'state': state,
        'title': title,
        'slug': slug,
        'category': category,
        'text': text,
        'formattedText': formattedText,
        'voteCount': voteCount,
        'closedAt': JsonConverters.toJson(closedAt,'DateTime',context),
        'statusKey': statusKey,
        'statusHexColor': statusHexColor,
        'statusChangedBy': JsonConverters.toJson(statusChangedBy,'UserVoiceUser',context),
        'creator': JsonConverters.toJson(creator,'UserVoiceUser',context),
        'response': JsonConverters.toJson(response,'UserVoiceComment',context),
        'createdAt': JsonConverters.toJson(createdAt,'DateTime',context),
        'updatedAt': JsonConverters.toJson(updatedAt,'DateTime',context)
    };

    createResponse() { return new ImportUserVoiceSuggestionResponse(); }
    String getTypeName() { return "ImportUserVoiceSuggestion"; }
    TypeContext context = _ctx;
}

// @Route("/posts/comment", "GET")
class QueryPostComments extends QueryDb1<PostComment> implements IReturn<QueryResponse<PostComment>>, IConvertible
{
    int userId;
    int postId;

    QueryPostComments({this.userId,this.postId});
    QueryPostComments.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        super.fromMap(json);
        userId = json['userId'];
        postId = json['postId'];
        return this;
    }

    Map<String, dynamic> toJson() => super.toJson()..addAll({
        'userId': userId,
        'postId': postId
    });

    createResponse() { return new QueryResponse<PostComment>(); }
    String getTypeName() { return "QueryPostComments"; }
    TypeContext context = _ctx;
}

// @Route("/admin/technology/search")
// @AutoQueryViewer(DefaultSearchField="Tier", DefaultSearchText="Data", DefaultSearchType="=", Description="Explore different Technologies", IconUrl="octicon:database", Title="Find Technologies Admin")
class FindTechnologiesAdmin extends QueryDb1<Technology> implements IReturn<QueryResponse<Technology>>, IConvertible
{
    String name;

    FindTechnologiesAdmin({this.name});
    FindTechnologiesAdmin.fromJson(Map<String, dynamic> json) { fromMap(json); }

    fromMap(Map<String, dynamic> json) {
        super.fromMap(json);
        name = json['name'];
        return this;
    }

    Map<String, dynamic> toJson() => super.toJson()..addAll({
        'name': name
    });

    createResponse() { return new QueryResponse<Technology>(); }
    String getTypeName() { return "FindTechnologiesAdmin"; }
    TypeContext context = _ctx;
}

TypeContext _ctx = new TypeContext(library: 'www.techstacks.io', types: <String, TypeInfo> {
    'PostType': new TypeInfo(TypeOf.Enum, enumValues:PostType.values),
    'Post': new TypeInfo(TypeOf.Class, create:() => new Post()),
    'Organization': new TypeInfo(TypeOf.Class, create:() => new Organization()),
    'OrganizationLabel': new TypeInfo(TypeOf.Class, create:() => new OrganizationLabel()),
    'Category': new TypeInfo(TypeOf.Class, create:() => new Category()),
    'OrganizationMember': new TypeInfo(TypeOf.Class, create:() => new OrganizationMember()),
    'OrganizationMemberInvite': new TypeInfo(TypeOf.Class, create:() => new OrganizationMemberInvite()),
    'FlagType': new TypeInfo(TypeOf.Enum, enumValues:FlagType.values),
    'PostReport': new TypeInfo(TypeOf.Class, create:() => new PostReport()),
    'PostReportInfo': new TypeInfo(TypeOf.Class, create:() => new PostReportInfo()),
    'PostCommentReport': new TypeInfo(TypeOf.Class, create:() => new PostCommentReport()),
    'PostCommentReportInfo': new TypeInfo(TypeOf.Class, create:() => new PostCommentReportInfo()),
    'PostComment': new TypeInfo(TypeOf.Class, create:() => new PostComment()),
    'ReportAction': new TypeInfo(TypeOf.Enum, enumValues:ReportAction.values),
    'UserRef': new TypeInfo(TypeOf.Class, create:() => new UserRef()),
    'OrganizationSubscription': new TypeInfo(TypeOf.Class, create:() => new OrganizationSubscription()),
    'TechnologyStackBase': new TypeInfo(TypeOf.AbstractClass),
    'TechnologyStack': new TypeInfo(TypeOf.Class, create:() => new TechnologyStack()),
    'TechnologyTier': new TypeInfo(TypeOf.Enum, enumValues:TechnologyTier.values),
    'TechnologyBase': new TypeInfo(TypeOf.AbstractClass),
    'Technology': new TypeInfo(TypeOf.Class, create:() => new Technology()),
    'UserActivity': new TypeInfo(TypeOf.Class, create:() => new UserActivity()),
    'Frequency': new TypeInfo(TypeOf.Enum, enumValues:Frequency.values),
    'TechnologyHistory': new TypeInfo(TypeOf.Class, create:() => new TechnologyHistory()),
    'IRegisterStats': new TypeInfo(TypeOf.Interface),
    'TechnologyStackHistory': new TypeInfo(TypeOf.Class, create:() => new TechnologyStackHistory()),
    'UserInfo': new TypeInfo(TypeOf.Class, create:() => new UserInfo()),
    'TechnologyInfo': new TypeInfo(TypeOf.Class, create:() => new TechnologyInfo()),
    'TechnologyInStack': new TypeInfo(TypeOf.Class, create:() => new TechnologyInStack()),
    'TechStackDetails': new TypeInfo(TypeOf.Class, create:() => new TechStackDetails()),
    'List<TechnologyInStack>': new TypeInfo(TypeOf.Class, create:() => new List<TechnologyInStack>()),
    'LabelInfo': new TypeInfo(TypeOf.Class, create:() => new LabelInfo()),
    'CategoryInfo': new TypeInfo(TypeOf.Class, create:() => new CategoryInfo()),
    'OrganizationInfo': new TypeInfo(TypeOf.Class, create:() => new OrganizationInfo()),
    'List<LabelInfo>': new TypeInfo(TypeOf.Class, create:() => new List<LabelInfo>()),
    'List<CategoryInfo>': new TypeInfo(TypeOf.Class, create:() => new List<CategoryInfo>()),
    'Option': new TypeInfo(TypeOf.Class, create:() => new Option()),
    'UserVoiceUser': new TypeInfo(TypeOf.Class, create:() => new UserVoiceUser()),
    'UserVoiceComment': new TypeInfo(TypeOf.Class, create:() => new UserVoiceComment()),
    'GetOrganizationResponse': new TypeInfo(TypeOf.Class, create:() => new GetOrganizationResponse()),
    'List<OrganizationLabel>': new TypeInfo(TypeOf.Class, create:() => new List<OrganizationLabel>()),
    'List<Category>': new TypeInfo(TypeOf.Class, create:() => new List<Category>()),
    'List<OrganizationMember>': new TypeInfo(TypeOf.Class, create:() => new List<OrganizationMember>()),
    'GetOrganizationMembersResponse': new TypeInfo(TypeOf.Class, create:() => new GetOrganizationMembersResponse()),
    'GetOrganizationAdminResponse': new TypeInfo(TypeOf.Class, create:() => new GetOrganizationAdminResponse()),
    'List<OrganizationMemberInvite>': new TypeInfo(TypeOf.Class, create:() => new List<OrganizationMemberInvite>()),
    'List<PostReportInfo>': new TypeInfo(TypeOf.Class, create:() => new List<PostReportInfo>()),
    'List<PostCommentReportInfo>': new TypeInfo(TypeOf.Class, create:() => new List<PostCommentReportInfo>()),
    'CreateOrganizationForTechnologyResponse': new TypeInfo(TypeOf.Class, create:() => new CreateOrganizationForTechnologyResponse()),
    'CreateOrganizationResponse': new TypeInfo(TypeOf.Class, create:() => new CreateOrganizationResponse()),
    'UpdateOrganizationResponse': new TypeInfo(TypeOf.Class, create:() => new UpdateOrganizationResponse()),
    'OrganizationLabelResponse': new TypeInfo(TypeOf.Class, create:() => new OrganizationLabelResponse()),
    'AddCategoryResponse': new TypeInfo(TypeOf.Class, create:() => new AddCategoryResponse()),
    'UpdateCategoryResponse': new TypeInfo(TypeOf.Class, create:() => new UpdateCategoryResponse()),
    'AddOrganizationMemberResponse': new TypeInfo(TypeOf.Class, create:() => new AddOrganizationMemberResponse()),
    'UpdateOrganizationMemberResponse': new TypeInfo(TypeOf.Class, create:() => new UpdateOrganizationMemberResponse()),
    'SetOrganizationMembersResponse': new TypeInfo(TypeOf.Class, create:() => new SetOrganizationMembersResponse()),
    'GetOrganizationMemberInvitesResponse': new TypeInfo(TypeOf.Class, create:() => new GetOrganizationMemberInvitesResponse()),
    'RequestOrganizationMemberInviteResponse': new TypeInfo(TypeOf.Class, create:() => new RequestOrganizationMemberInviteResponse()),
    'UpdateOrganizationMemberInviteResponse': new TypeInfo(TypeOf.Class, create:() => new UpdateOrganizationMemberInviteResponse()),
    'GetPostResponse': new TypeInfo(TypeOf.Class, create:() => new GetPostResponse()),
    'List<PostComment>': new TypeInfo(TypeOf.Class, create:() => new List<PostComment>()),
    'CreatePostResponse': new TypeInfo(TypeOf.Class, create:() => new CreatePostResponse()),
    'UpdatePostResponse': new TypeInfo(TypeOf.Class, create:() => new UpdatePostResponse()),
    'DeletePostResponse': new TypeInfo(TypeOf.Class, create:() => new DeletePostResponse()),
    'CreatePostCommentResponse': new TypeInfo(TypeOf.Class, create:() => new CreatePostCommentResponse()),
    'UpdatePostCommentResponse': new TypeInfo(TypeOf.Class, create:() => new UpdatePostCommentResponse()),
    'DeletePostCommentResponse': new TypeInfo(TypeOf.Class, create:() => new DeletePostCommentResponse()),
    'GetUserPostCommentVotesResponse': new TypeInfo(TypeOf.Class, create:() => new GetUserPostCommentVotesResponse()),
    'PinPostCommentResponse': new TypeInfo(TypeOf.Class, create:() => new PinPostCommentResponse()),
    'GetUsersByEmailsResponse': new TypeInfo(TypeOf.Class, create:() => new GetUsersByEmailsResponse()),
    'List<UserRef>': new TypeInfo(TypeOf.Class, create:() => new List<UserRef>()),
    'GetUserPostActivityResponse': new TypeInfo(TypeOf.Class, create:() => new GetUserPostActivityResponse()),
    'GetUserOrganizationsResponse': new TypeInfo(TypeOf.Class, create:() => new GetUserOrganizationsResponse()),
    'List<OrganizationSubscription>': new TypeInfo(TypeOf.Class, create:() => new List<OrganizationSubscription>()),
    'UserPostVoteResponse': new TypeInfo(TypeOf.Class, create:() => new UserPostVoteResponse()),
    'UserPostFavoriteResponse': new TypeInfo(TypeOf.Class, create:() => new UserPostFavoriteResponse()),
    'UserPostReportResponse': new TypeInfo(TypeOf.Class, create:() => new UserPostReportResponse()),
    'UserPostCommentVoteResponse': new TypeInfo(TypeOf.Class, create:() => new UserPostCommentVoteResponse()),
    'UserPostCommentReportResponse': new TypeInfo(TypeOf.Class, create:() => new UserPostCommentReportResponse()),
    'SessionInfoResponse': new TypeInfo(TypeOf.Class, create:() => new SessionInfoResponse()),
    'List<TechnologyStack>': new TypeInfo(TypeOf.Class, create:() => new List<TechnologyStack>()),
    'List<Technology>': new TypeInfo(TypeOf.Class, create:() => new List<Technology>()),
    'GetTechnologyPreviousVersionsResponse': new TypeInfo(TypeOf.Class, create:() => new GetTechnologyPreviousVersionsResponse()),
    'List<TechnologyHistory>': new TypeInfo(TypeOf.Class, create:() => new List<TechnologyHistory>()),
    'GetAllTechnologiesResponse': new TypeInfo(TypeOf.Class, create:() => new GetAllTechnologiesResponse()),
    'GetTechnologyResponse': new TypeInfo(TypeOf.Class, create:() => new GetTechnologyResponse()),
    'GetTechnologyFavoriteDetailsResponse': new TypeInfo(TypeOf.Class, create:() => new GetTechnologyFavoriteDetailsResponse()),
    'CreateTechnologyResponse': new TypeInfo(TypeOf.Class, create:() => new CreateTechnologyResponse()),
    'UpdateTechnologyResponse': new TypeInfo(TypeOf.Class, create:() => new UpdateTechnologyResponse()),
    'DeleteTechnologyResponse': new TypeInfo(TypeOf.Class, create:() => new DeleteTechnologyResponse()),
    'GetTechnologyStackPreviousVersionsResponse': new TypeInfo(TypeOf.Class, create:() => new GetTechnologyStackPreviousVersionsResponse()),
    'List<TechnologyStackHistory>': new TypeInfo(TypeOf.Class, create:() => new List<TechnologyStackHistory>()),
    'GetPageStatsResponse': new TypeInfo(TypeOf.Class, create:() => new GetPageStatsResponse()),
    'HourlyTaskResponse': new TypeInfo(TypeOf.Class, create:() => new HourlyTaskResponse()),
    'OverviewResponse': new TypeInfo(TypeOf.Class, create:() => new OverviewResponse()),
    'List<UserInfo>': new TypeInfo(TypeOf.Class, create:() => new List<UserInfo>()),
    'List<TechnologyInfo>': new TypeInfo(TypeOf.Class, create:() => new List<TechnologyInfo>()),
    'List<TechStackDetails>': new TypeInfo(TypeOf.Class, create:() => new List<TechStackDetails>()),
    'List<OrganizationInfo>': new TypeInfo(TypeOf.Class, create:() => new List<OrganizationInfo>()),
    'Map<String,List<TechnologyInfo>>': new TypeInfo(TypeOf.Class, create:() => new Map<String,List<TechnologyInfo>>()),
    'AppOverviewResponse': new TypeInfo(TypeOf.Class, create:() => new AppOverviewResponse()),
    'List<Option>': new TypeInfo(TypeOf.Class, create:() => new List<Option>()),
    'GetAllTechnologyStacksResponse': new TypeInfo(TypeOf.Class, create:() => new GetAllTechnologyStacksResponse()),
    'GetTechnologyStackResponse': new TypeInfo(TypeOf.Class, create:() => new GetTechnologyStackResponse()),
    'GetTechnologyStackFavoriteDetailsResponse': new TypeInfo(TypeOf.Class, create:() => new GetTechnologyStackFavoriteDetailsResponse()),
    'GetConfigResponse': new TypeInfo(TypeOf.Class, create:() => new GetConfigResponse()),
    'CreateTechnologyStackResponse': new TypeInfo(TypeOf.Class, create:() => new CreateTechnologyStackResponse()),
    'UpdateTechnologyStackResponse': new TypeInfo(TypeOf.Class, create:() => new UpdateTechnologyStackResponse()),
    'DeleteTechnologyStackResponse': new TypeInfo(TypeOf.Class, create:() => new DeleteTechnologyStackResponse()),
    'GetFavoriteTechStackResponse': new TypeInfo(TypeOf.Class, create:() => new GetFavoriteTechStackResponse()),
    'FavoriteTechStackResponse': new TypeInfo(TypeOf.Class, create:() => new FavoriteTechStackResponse()),
    'GetFavoriteTechnologiesResponse': new TypeInfo(TypeOf.Class, create:() => new GetFavoriteTechnologiesResponse()),
    'FavoriteTechnologyResponse': new TypeInfo(TypeOf.Class, create:() => new FavoriteTechnologyResponse()),
    'GetUserFeedResponse': new TypeInfo(TypeOf.Class, create:() => new GetUserFeedResponse()),
    'GetUsersKarmaResponse': new TypeInfo(TypeOf.Class, create:() => new GetUsersKarmaResponse()),
    'Map<int,int>': new TypeInfo(TypeOf.Class, create:() => new Map<int,int>()),
    'GetUserInfoResponse': new TypeInfo(TypeOf.Class, create:() => new GetUserInfoResponse()),
    'SyncDiscourseSiteResponse': new TypeInfo(TypeOf.Class, create:() => new SyncDiscourseSiteResponse()),
    'LogoUrlApprovalResponse': new TypeInfo(TypeOf.Class, create:() => new LogoUrlApprovalResponse()),
    'LockStackResponse': new TypeInfo(TypeOf.Class, create:() => new LockStackResponse()),
    'EmailTestRespoonse': new TypeInfo(TypeOf.Class, create:() => new EmailTestRespoonse()),
    'ImportUserResponse': new TypeInfo(TypeOf.Class, create:() => new ImportUserResponse()),
    'ImportUserVoiceSuggestionResponse': new TypeInfo(TypeOf.Class, create:() => new ImportUserVoiceSuggestionResponse()),
    'Ping': new TypeInfo(TypeOf.Class, create:() => new Ping()),
    'DummyTypes': new TypeInfo(TypeOf.Class, create:() => new DummyTypes()),
    'List<Post>': new TypeInfo(TypeOf.Class, create:() => new List<Post>()),
    'GetOrganization': new TypeInfo(TypeOf.Class, create:() => new GetOrganization()),
    'GetOrganizationBySlug': new TypeInfo(TypeOf.Class, create:() => new GetOrganizationBySlug()),
    'GetOrganizationMembers': new TypeInfo(TypeOf.Class, create:() => new GetOrganizationMembers()),
    'GetOrganizationAdmin': new TypeInfo(TypeOf.Class, create:() => new GetOrganizationAdmin()),
    'CreateOrganizationForTechnology': new TypeInfo(TypeOf.Class, create:() => new CreateOrganizationForTechnology()),
    'CreateOrganization': new TypeInfo(TypeOf.Class, create:() => new CreateOrganization()),
    'UpdateOrganization': new TypeInfo(TypeOf.Class, create:() => new UpdateOrganization()),
    'DeleteOrganization': new TypeInfo(TypeOf.Class, create:() => new DeleteOrganization()),
    'LockOrganization': new TypeInfo(TypeOf.Class, create:() => new LockOrganization()),
    'AddOrganizationLabel': new TypeInfo(TypeOf.Class, create:() => new AddOrganizationLabel()),
    'UpdateOrganizationLabel': new TypeInfo(TypeOf.Class, create:() => new UpdateOrganizationLabel()),
    'RemoveOrganizationLabel': new TypeInfo(TypeOf.Class, create:() => new RemoveOrganizationLabel()),
    'AddOrganizationCategory': new TypeInfo(TypeOf.Class, create:() => new AddOrganizationCategory()),
    'UpdateOrganizationCategory': new TypeInfo(TypeOf.Class, create:() => new UpdateOrganizationCategory()),
    'DeleteOrganizationCategory': new TypeInfo(TypeOf.Class, create:() => new DeleteOrganizationCategory()),
    'AddOrganizationMember': new TypeInfo(TypeOf.Class, create:() => new AddOrganizationMember()),
    'UpdateOrganizationMember': new TypeInfo(TypeOf.Class, create:() => new UpdateOrganizationMember()),
    'RemoveOrganizationMember': new TypeInfo(TypeOf.Class, create:() => new RemoveOrganizationMember()),
    'SetOrganizationMembers': new TypeInfo(TypeOf.Class, create:() => new SetOrganizationMembers()),
    'GetOrganizationMemberInvites': new TypeInfo(TypeOf.Class, create:() => new GetOrganizationMemberInvites()),
    'RequestOrganizationMemberInvite': new TypeInfo(TypeOf.Class, create:() => new RequestOrganizationMemberInvite()),
    'UpdateOrganizationMemberInvite': new TypeInfo(TypeOf.Class, create:() => new UpdateOrganizationMemberInvite()),
    'QueryPosts': new TypeInfo(TypeOf.Class, create:() => new QueryPosts()),
    'GetPost': new TypeInfo(TypeOf.Class, create:() => new GetPost()),
    'CreatePost': new TypeInfo(TypeOf.Class, create:() => new CreatePost()),
    'UpdatePost': new TypeInfo(TypeOf.Class, create:() => new UpdatePost()),
    'DeletePost': new TypeInfo(TypeOf.Class, create:() => new DeletePost()),
    'LockPost': new TypeInfo(TypeOf.Class, create:() => new LockPost()),
    'HidePost': new TypeInfo(TypeOf.Class, create:() => new HidePost()),
    'ChangeStatusPost': new TypeInfo(TypeOf.Class, create:() => new ChangeStatusPost()),
    'ActionPostReport': new TypeInfo(TypeOf.Class, create:() => new ActionPostReport()),
    'CreatePostComment': new TypeInfo(TypeOf.Class, create:() => new CreatePostComment()),
    'UpdatePostComment': new TypeInfo(TypeOf.Class, create:() => new UpdatePostComment()),
    'DeletePostComment': new TypeInfo(TypeOf.Class, create:() => new DeletePostComment()),
    'ActionPostCommentReport': new TypeInfo(TypeOf.Class, create:() => new ActionPostCommentReport()),
    'GetUserPostCommentVotes': new TypeInfo(TypeOf.Class, create:() => new GetUserPostCommentVotes()),
    'PinPostComment': new TypeInfo(TypeOf.Class, create:() => new PinPostComment()),
    'GetUsersByEmails': new TypeInfo(TypeOf.Class, create:() => new GetUsersByEmails()),
    'GetUserPostActivity': new TypeInfo(TypeOf.Class, create:() => new GetUserPostActivity()),
    'GetUserOrganizations': new TypeInfo(TypeOf.Class, create:() => new GetUserOrganizations()),
    'UserPostVote': new TypeInfo(TypeOf.Class, create:() => new UserPostVote()),
    'UserPostFavorite': new TypeInfo(TypeOf.Class, create:() => new UserPostFavorite()),
    'UserPostReport': new TypeInfo(TypeOf.Class, create:() => new UserPostReport()),
    'UserPostCommentVote': new TypeInfo(TypeOf.Class, create:() => new UserPostCommentVote()),
    'UserPostCommentReport': new TypeInfo(TypeOf.Class, create:() => new UserPostCommentReport()),
    'StorePreRender': new TypeInfo(TypeOf.Class, create:() => new StorePreRender()),
    'GetPreRender': new TypeInfo(TypeOf.Class, create:() => new GetPreRender()),
    'SessionInfo': new TypeInfo(TypeOf.Class, create:() => new SessionInfo()),
    'SubscribeToOrganization': new TypeInfo(TypeOf.Class, create:() => new SubscribeToOrganization()),
    'List<PostType>': new TypeInfo(TypeOf.Class, create:() => new List<PostType>()),
    'SubscribeToPost': new TypeInfo(TypeOf.Class, create:() => new SubscribeToPost()),
    'DeleteOrganizationSubscription': new TypeInfo(TypeOf.Class, create:() => new DeleteOrganizationSubscription()),
    'DeletePostSubscription': new TypeInfo(TypeOf.Class, create:() => new DeletePostSubscription()),
    'GetTechnologyPreviousVersions': new TypeInfo(TypeOf.Class, create:() => new GetTechnologyPreviousVersions()),
    'GetAllTechnologies': new TypeInfo(TypeOf.Class, create:() => new GetAllTechnologies()),
    'FindTechnologies': new TypeInfo(TypeOf.Class, create:() => new FindTechnologies()),
    'QueryTechnology': new TypeInfo(TypeOf.Class, create:() => new QueryTechnology()),
    'GetTechnology': new TypeInfo(TypeOf.Class, create:() => new GetTechnology()),
    'GetTechnologyFavoriteDetails': new TypeInfo(TypeOf.Class, create:() => new GetTechnologyFavoriteDetails()),
    'CreateTechnology': new TypeInfo(TypeOf.Class, create:() => new CreateTechnology()),
    'UpdateTechnology': new TypeInfo(TypeOf.Class, create:() => new UpdateTechnology()),
    'DeleteTechnology': new TypeInfo(TypeOf.Class, create:() => new DeleteTechnology()),
    'GetTechnologyStackPreviousVersions': new TypeInfo(TypeOf.Class, create:() => new GetTechnologyStackPreviousVersions()),
    'GetPageStats': new TypeInfo(TypeOf.Class, create:() => new GetPageStats()),
    'ClearCache': new TypeInfo(TypeOf.Class, create:() => new ClearCache()),
    'HourlyTask': new TypeInfo(TypeOf.Class, create:() => new HourlyTask()),
    'FindTechStacks': new TypeInfo(TypeOf.Class, create:() => new FindTechStacks()),
    'QueryTechStacks': new TypeInfo(TypeOf.Class, create:() => new QueryTechStacks()),
    'Overview': new TypeInfo(TypeOf.Class, create:() => new Overview()),
    'AppOverview': new TypeInfo(TypeOf.Class, create:() => new AppOverview()),
    'GetAllTechnologyStacks': new TypeInfo(TypeOf.Class, create:() => new GetAllTechnologyStacks()),
    'GetTechnologyStack': new TypeInfo(TypeOf.Class, create:() => new GetTechnologyStack()),
    'GetTechnologyStackFavoriteDetails': new TypeInfo(TypeOf.Class, create:() => new GetTechnologyStackFavoriteDetails()),
    'GetConfig': new TypeInfo(TypeOf.Class, create:() => new GetConfig()),
    'CreateTechnologyStack': new TypeInfo(TypeOf.Class, create:() => new CreateTechnologyStack()),
    'UpdateTechnologyStack': new TypeInfo(TypeOf.Class, create:() => new UpdateTechnologyStack()),
    'DeleteTechnologyStack': new TypeInfo(TypeOf.Class, create:() => new DeleteTechnologyStack()),
    'GetFavoriteTechStack': new TypeInfo(TypeOf.Class, create:() => new GetFavoriteTechStack()),
    'AddFavoriteTechStack': new TypeInfo(TypeOf.Class, create:() => new AddFavoriteTechStack()),
    'RemoveFavoriteTechStack': new TypeInfo(TypeOf.Class, create:() => new RemoveFavoriteTechStack()),
    'GetFavoriteTechnologies': new TypeInfo(TypeOf.Class, create:() => new GetFavoriteTechnologies()),
    'AddFavoriteTechnology': new TypeInfo(TypeOf.Class, create:() => new AddFavoriteTechnology()),
    'RemoveFavoriteTechnology': new TypeInfo(TypeOf.Class, create:() => new RemoveFavoriteTechnology()),
    'GetUserFeed': new TypeInfo(TypeOf.Class, create:() => new GetUserFeed()),
    'GetUsersKarma': new TypeInfo(TypeOf.Class, create:() => new GetUsersKarma()),
    'GetUserInfo': new TypeInfo(TypeOf.Class, create:() => new GetUserInfo()),
    'UserAvatar': new TypeInfo(TypeOf.Class, create:() => new UserAvatar()),
    'MqStart': new TypeInfo(TypeOf.Class, create:() => new MqStart()),
    'MqStop': new TypeInfo(TypeOf.Class, create:() => new MqStop()),
    'MqStats': new TypeInfo(TypeOf.Class, create:() => new MqStats()),
    'MqStatus': new TypeInfo(TypeOf.Class, create:() => new MqStatus()),
    'SyncDiscourseSite': new TypeInfo(TypeOf.Class, create:() => new SyncDiscourseSite()),
    'LogoUrlApproval': new TypeInfo(TypeOf.Class, create:() => new LogoUrlApproval()),
    'LockTechStack': new TypeInfo(TypeOf.Class, create:() => new LockTechStack()),
    'LockTech': new TypeInfo(TypeOf.Class, create:() => new LockTech()),
    'EmailTest': new TypeInfo(TypeOf.Class, create:() => new EmailTest()),
    'ImportUser': new TypeInfo(TypeOf.Class, create:() => new ImportUser()),
    'ImportUserVoiceSuggestion': new TypeInfo(TypeOf.Class, create:() => new ImportUserVoiceSuggestion()),
    'QueryPostComments': new TypeInfo(TypeOf.Class, create:() => new QueryPostComments()),
    'FindTechnologiesAdmin': new TypeInfo(TypeOf.Class, create:() => new FindTechnologiesAdmin()),
});

