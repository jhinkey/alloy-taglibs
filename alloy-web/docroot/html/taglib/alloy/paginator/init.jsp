<%@ include file="/html/taglib/alloy/init.jsp" %>

<%
Map<String, Object> dynamicAttributes = (Map<String, Object>)request.getAttribute("alloy:paginator:dynamicAttributes");
Map<String, Object> scopedAttributes = (Map<String, Object>)request.getAttribute("alloy:paginator:scopedAttributes");

Map<String, Object> options = new HashMap<String, Object>();

options.putAll(scopedAttributes);
options.putAll(dynamicAttributes);

java.lang.Object _boundingBox = (java.lang.Object)request.getAttribute("alloy:paginator:boundingBox");
java.lang.Object _contentBox = (java.lang.Object)request.getAttribute("alloy:paginator:contentBox");
java.lang.Object _srcNode = (java.lang.Object)request.getAttribute("alloy:paginator:srcNode");

boolean hasBoundingBox = GetterUtil.getBoolean(String.valueOf(_boundingBox));
boolean hasContentBox = GetterUtil.getBoolean(String.valueOf(_contentBox));
boolean hasSrcNode = GetterUtil.getBoolean(String.valueOf(_srcNode));

java.lang.Boolean _alwaysVisible = GetterUtil.getBoolean((java.lang.Boolean)request.getAttribute("alloy:paginator:alwaysVisible"), true);
java.lang.String _containers = GetterUtil.getString((java.lang.String)request.getAttribute("alloy:paginator:containers"));
java.lang.Boolean _destroyed = GetterUtil.getBoolean((java.lang.Boolean)request.getAttribute("alloy:paginator:destroyed"), false);
java.lang.String _firstPageLink = GetterUtil.getString((java.lang.String)request.getAttribute("alloy:paginator:firstPageLink"));
java.lang.String _firstPageLinkLabel = GetterUtil.getString((java.lang.String)request.getAttribute("alloy:paginator:firstPageLinkLabel"), "first");
java.lang.Boolean _initialized = GetterUtil.getBoolean((java.lang.Boolean)request.getAttribute("alloy:paginator:initialized"), false);
java.lang.String _lastPageLink = GetterUtil.getString((java.lang.String)request.getAttribute("alloy:paginator:lastPageLink"));
java.lang.String _lastPageLinkLabel = GetterUtil.getString((java.lang.String)request.getAttribute("alloy:paginator:lastPageLinkLabel"), "last");
java.lang.Number _maxPageLinks = GetterUtil.getNumber(String.valueOf(request.getAttribute("alloy:paginator:maxPageLinks")), 10);
java.lang.String _nextPageLink = GetterUtil.getString((java.lang.String)request.getAttribute("alloy:paginator:nextPageLink"));
java.lang.String _nextPageLinkLabel = GetterUtil.getString((java.lang.String)request.getAttribute("alloy:paginator:nextPageLinkLabel"), "next &gt;");
java.lang.Number _page = GetterUtil.getNumber(String.valueOf(request.getAttribute("alloy:paginator:page")), 1);
java.lang.String _pageContainerTemplate = GetterUtil.getString((java.lang.String)request.getAttribute("alloy:paginator:pageContainerTemplate"));
java.lang.Object _pageLinkContent = GetterUtil.getObject((java.lang.Object)request.getAttribute("alloy:paginator:pageLinkContent"));
java.lang.String _pageLinkTemplate = GetterUtil.getString((java.lang.String)request.getAttribute("alloy:paginator:pageLinkTemplate"));
java.lang.String _pageReportEl = GetterUtil.getString((java.lang.String)request.getAttribute("alloy:paginator:pageReportEl"));
java.lang.String _pageReportLabelTemplate = GetterUtil.getString((java.lang.String)request.getAttribute("alloy:paginator:pageReportLabelTemplate"), "({page} of {totalPages})");
java.lang.String _prevPageLink = GetterUtil.getString((java.lang.String)request.getAttribute("alloy:paginator:prevPageLink"));
java.lang.String _prevPageLinkLabel = GetterUtil.getString((java.lang.String)request.getAttribute("alloy:paginator:prevPageLinkLabel"), "&lt; prev");
java.lang.Number _rowsPerPage = GetterUtil.getNumber(String.valueOf(request.getAttribute("alloy:paginator:rowsPerPage")), 1);
java.lang.String _rowsPerPageEl = GetterUtil.getString((java.lang.String)request.getAttribute("alloy:paginator:rowsPerPageEl"));
java.util.ArrayList _rowsPerPageOptions = JSONFactoryUtil.getArrayList(GetterUtil.getObject((java.lang.Object)request.getAttribute("alloy:paginator:rowsPerPageOptions"), "[]"));
java.util.HashMap _state = JSONFactoryUtil.getHashMap(GetterUtil.getObject((java.lang.Object)request.getAttribute("alloy:paginator:state"), "{}"));
java.lang.String _template = GetterUtil.getString((java.lang.String)request.getAttribute("alloy:paginator:template"), "{FirstPageLink} {PrevPageLink} {PageLinks} {NextPageLink} {LastPageLink} {CurrentPageReport} {Total} {RowsPerPageSelect}");
java.lang.Number _total = GetterUtil.getNumber(String.valueOf(request.getAttribute("alloy:paginator:total")), 0);
java.lang.String _totalEl = GetterUtil.getString((java.lang.String)request.getAttribute("alloy:paginator:totalEl"));
java.lang.String _totalLabel = GetterUtil.getString((java.lang.String)request.getAttribute("alloy:paginator:totalLabel"), "(Total {total})");
java.lang.Number _totalPages = GetterUtil.getNumber(String.valueOf(request.getAttribute("alloy:paginator:totalPages")), 0);
java.lang.Object _afterAlwaysVisibleChange = GetterUtil.getObject((java.lang.Object)request.getAttribute("alloy:paginator:afterAlwaysVisibleChange"));
java.lang.Object _afterContainersChange = GetterUtil.getObject((java.lang.Object)request.getAttribute("alloy:paginator:afterContainersChange"));
java.lang.Object _afterDestroy = GetterUtil.getObject((java.lang.Object)request.getAttribute("alloy:paginator:afterDestroy"));
java.lang.Object _afterDestroyedChange = GetterUtil.getObject((java.lang.Object)request.getAttribute("alloy:paginator:afterDestroyedChange"));
java.lang.Object _afterFirstPageLinkChange = GetterUtil.getObject((java.lang.Object)request.getAttribute("alloy:paginator:afterFirstPageLinkChange"));
java.lang.Object _afterFirstPageLinkLabelChange = GetterUtil.getObject((java.lang.Object)request.getAttribute("alloy:paginator:afterFirstPageLinkLabelChange"));
java.lang.Object _afterInit = GetterUtil.getObject((java.lang.Object)request.getAttribute("alloy:paginator:afterInit"));
java.lang.Object _afterInitializedChange = GetterUtil.getObject((java.lang.Object)request.getAttribute("alloy:paginator:afterInitializedChange"));
java.lang.Object _afterLastPageLinkChange = GetterUtil.getObject((java.lang.Object)request.getAttribute("alloy:paginator:afterLastPageLinkChange"));
java.lang.Object _afterLastPageLinkLabelChange = GetterUtil.getObject((java.lang.Object)request.getAttribute("alloy:paginator:afterLastPageLinkLabelChange"));
java.lang.Object _afterMaxPageLinksChange = GetterUtil.getObject((java.lang.Object)request.getAttribute("alloy:paginator:afterMaxPageLinksChange"));
java.lang.Object _afterNextPageLinkChange = GetterUtil.getObject((java.lang.Object)request.getAttribute("alloy:paginator:afterNextPageLinkChange"));
java.lang.Object _afterNextPageLinkLabelChange = GetterUtil.getObject((java.lang.Object)request.getAttribute("alloy:paginator:afterNextPageLinkLabelChange"));
java.lang.Object _afterPageChange = GetterUtil.getObject((java.lang.Object)request.getAttribute("alloy:paginator:afterPageChange"));
java.lang.Object _afterPageContainerTemplateChange = GetterUtil.getObject((java.lang.Object)request.getAttribute("alloy:paginator:afterPageContainerTemplateChange"));
java.lang.Object _afterPageLinkContentChange = GetterUtil.getObject((java.lang.Object)request.getAttribute("alloy:paginator:afterPageLinkContentChange"));
java.lang.Object _afterPageLinkTemplateChange = GetterUtil.getObject((java.lang.Object)request.getAttribute("alloy:paginator:afterPageLinkTemplateChange"));
java.lang.Object _afterPageReportElChange = GetterUtil.getObject((java.lang.Object)request.getAttribute("alloy:paginator:afterPageReportElChange"));
java.lang.Object _afterPageReportLabelTemplateChange = GetterUtil.getObject((java.lang.Object)request.getAttribute("alloy:paginator:afterPageReportLabelTemplateChange"));
java.lang.Object _afterPrevPageLinkChange = GetterUtil.getObject((java.lang.Object)request.getAttribute("alloy:paginator:afterPrevPageLinkChange"));
java.lang.Object _afterPrevPageLinkLabelChange = GetterUtil.getObject((java.lang.Object)request.getAttribute("alloy:paginator:afterPrevPageLinkLabelChange"));
java.lang.Object _afterRowsPerPageChange = GetterUtil.getObject((java.lang.Object)request.getAttribute("alloy:paginator:afterRowsPerPageChange"));
java.lang.Object _afterRowsPerPageElChange = GetterUtil.getObject((java.lang.Object)request.getAttribute("alloy:paginator:afterRowsPerPageElChange"));
java.lang.Object _afterRowsPerPageOptionsChange = GetterUtil.getObject((java.lang.Object)request.getAttribute("alloy:paginator:afterRowsPerPageOptionsChange"));
java.lang.Object _afterStateChange = GetterUtil.getObject((java.lang.Object)request.getAttribute("alloy:paginator:afterStateChange"));
java.lang.Object _afterTemplateChange = GetterUtil.getObject((java.lang.Object)request.getAttribute("alloy:paginator:afterTemplateChange"));
java.lang.Object _afterTotalChange = GetterUtil.getObject((java.lang.Object)request.getAttribute("alloy:paginator:afterTotalChange"));
java.lang.Object _afterTotalElChange = GetterUtil.getObject((java.lang.Object)request.getAttribute("alloy:paginator:afterTotalElChange"));
java.lang.Object _afterTotalLabelChange = GetterUtil.getObject((java.lang.Object)request.getAttribute("alloy:paginator:afterTotalLabelChange"));
java.lang.Object _afterTotalPagesChange = GetterUtil.getObject((java.lang.Object)request.getAttribute("alloy:paginator:afterTotalPagesChange"));
java.lang.Object _onAlwaysVisibleChange = GetterUtil.getObject((java.lang.Object)request.getAttribute("alloy:paginator:onAlwaysVisibleChange"));
java.lang.Object _onContainersChange = GetterUtil.getObject((java.lang.Object)request.getAttribute("alloy:paginator:onContainersChange"));
java.lang.Object _onDestroy = GetterUtil.getObject((java.lang.Object)request.getAttribute("alloy:paginator:onDestroy"));
java.lang.Object _onDestroyedChange = GetterUtil.getObject((java.lang.Object)request.getAttribute("alloy:paginator:onDestroyedChange"));
java.lang.Object _onFirstPageLinkChange = GetterUtil.getObject((java.lang.Object)request.getAttribute("alloy:paginator:onFirstPageLinkChange"));
java.lang.Object _onFirstPageLinkLabelChange = GetterUtil.getObject((java.lang.Object)request.getAttribute("alloy:paginator:onFirstPageLinkLabelChange"));
java.lang.Object _onInit = GetterUtil.getObject((java.lang.Object)request.getAttribute("alloy:paginator:onInit"));
java.lang.Object _onInitializedChange = GetterUtil.getObject((java.lang.Object)request.getAttribute("alloy:paginator:onInitializedChange"));
java.lang.Object _onLastPageLinkChange = GetterUtil.getObject((java.lang.Object)request.getAttribute("alloy:paginator:onLastPageLinkChange"));
java.lang.Object _onLastPageLinkLabelChange = GetterUtil.getObject((java.lang.Object)request.getAttribute("alloy:paginator:onLastPageLinkLabelChange"));
java.lang.Object _onMaxPageLinksChange = GetterUtil.getObject((java.lang.Object)request.getAttribute("alloy:paginator:onMaxPageLinksChange"));
java.lang.Object _onNextPageLinkChange = GetterUtil.getObject((java.lang.Object)request.getAttribute("alloy:paginator:onNextPageLinkChange"));
java.lang.Object _onNextPageLinkLabelChange = GetterUtil.getObject((java.lang.Object)request.getAttribute("alloy:paginator:onNextPageLinkLabelChange"));
java.lang.Object _onPageChange = GetterUtil.getObject((java.lang.Object)request.getAttribute("alloy:paginator:onPageChange"));
java.lang.Object _onPageContainerTemplateChange = GetterUtil.getObject((java.lang.Object)request.getAttribute("alloy:paginator:onPageContainerTemplateChange"));
java.lang.Object _onPageLinkContentChange = GetterUtil.getObject((java.lang.Object)request.getAttribute("alloy:paginator:onPageLinkContentChange"));
java.lang.Object _onPageLinkTemplateChange = GetterUtil.getObject((java.lang.Object)request.getAttribute("alloy:paginator:onPageLinkTemplateChange"));
java.lang.Object _onPageReportElChange = GetterUtil.getObject((java.lang.Object)request.getAttribute("alloy:paginator:onPageReportElChange"));
java.lang.Object _onPageReportLabelTemplateChange = GetterUtil.getObject((java.lang.Object)request.getAttribute("alloy:paginator:onPageReportLabelTemplateChange"));
java.lang.Object _onPrevPageLinkChange = GetterUtil.getObject((java.lang.Object)request.getAttribute("alloy:paginator:onPrevPageLinkChange"));
java.lang.Object _onPrevPageLinkLabelChange = GetterUtil.getObject((java.lang.Object)request.getAttribute("alloy:paginator:onPrevPageLinkLabelChange"));
java.lang.Object _onRowsPerPageChange = GetterUtil.getObject((java.lang.Object)request.getAttribute("alloy:paginator:onRowsPerPageChange"));
java.lang.Object _onRowsPerPageElChange = GetterUtil.getObject((java.lang.Object)request.getAttribute("alloy:paginator:onRowsPerPageElChange"));
java.lang.Object _onRowsPerPageOptionsChange = GetterUtil.getObject((java.lang.Object)request.getAttribute("alloy:paginator:onRowsPerPageOptionsChange"));
java.lang.Object _onStateChange = GetterUtil.getObject((java.lang.Object)request.getAttribute("alloy:paginator:onStateChange"));
java.lang.Object _onTemplateChange = GetterUtil.getObject((java.lang.Object)request.getAttribute("alloy:paginator:onTemplateChange"));
java.lang.Object _onTotalChange = GetterUtil.getObject((java.lang.Object)request.getAttribute("alloy:paginator:onTotalChange"));
java.lang.Object _onTotalElChange = GetterUtil.getObject((java.lang.Object)request.getAttribute("alloy:paginator:onTotalElChange"));
java.lang.Object _onTotalLabelChange = GetterUtil.getObject((java.lang.Object)request.getAttribute("alloy:paginator:onTotalLabelChange"));
java.lang.Object _onTotalPagesChange = GetterUtil.getObject((java.lang.Object)request.getAttribute("alloy:paginator:onTotalPagesChange"));

String uniqueId = StringPool.BLANK;

boolean useJavaScript = GetterUtil.getBoolean((Serializable)dynamicAttributes.get("useJavaScript"), true);
boolean useMarkup = GetterUtil.getBoolean((Serializable)dynamicAttributes.get("useMarkup"), true);

if (useMarkup) {
	uniqueId = MarkupUtil.getUniqueId();

	String prefix = StringPool.POUND.concat(uniqueId);

	if (!hasBoundingBox) {
		_boundingBox = prefix.concat("BoundingBox");

		options.put("boundingBox", _boundingBox);
	}

	if (!hasSrcNode && !hasContentBox) {
		_srcNode = prefix.concat("SrcNode");

		options.put("srcNode", _srcNode);
	}

	if (!hasSrcNode && hasContentBox) {
		_contentBox = prefix.concat("ContentBox");

		options.put("contentBox", _contentBox);
	}
}

_updateOptions(options, "alwaysVisible", _alwaysVisible);
_updateOptions(options, "containers", _containers);
_updateOptions(options, "destroyed", _destroyed);
_updateOptions(options, "firstPageLink", _firstPageLink);
_updateOptions(options, "firstPageLinkLabel", _firstPageLinkLabel);
_updateOptions(options, "initialized", _initialized);
_updateOptions(options, "lastPageLink", _lastPageLink);
_updateOptions(options, "lastPageLinkLabel", _lastPageLinkLabel);
_updateOptions(options, "maxPageLinks", _maxPageLinks);
_updateOptions(options, "nextPageLink", _nextPageLink);
_updateOptions(options, "nextPageLinkLabel", _nextPageLinkLabel);
_updateOptions(options, "page", _page);
_updateOptions(options, "pageContainerTemplate", _pageContainerTemplate);
_updateOptions(options, "pageLinkContent", _pageLinkContent);
_updateOptions(options, "pageLinkTemplate", _pageLinkTemplate);
_updateOptions(options, "pageReportEl", _pageReportEl);
_updateOptions(options, "pageReportLabelTemplate", _pageReportLabelTemplate);
_updateOptions(options, "prevPageLink", _prevPageLink);
_updateOptions(options, "prevPageLinkLabel", _prevPageLinkLabel);
_updateOptions(options, "rowsPerPage", _rowsPerPage);
_updateOptions(options, "rowsPerPageEl", _rowsPerPageEl);
_updateOptions(options, "rowsPerPageOptions", _rowsPerPageOptions);
_updateOptions(options, "state", _state);
_updateOptions(options, "template", _template);
_updateOptions(options, "total", _total);
_updateOptions(options, "totalEl", _totalEl);
_updateOptions(options, "totalLabel", _totalLabel);
_updateOptions(options, "totalPages", _totalPages);
_updateOptions(options, "afterAlwaysVisibleChange", _afterAlwaysVisibleChange);
_updateOptions(options, "afterContainersChange", _afterContainersChange);
_updateOptions(options, "afterDestroy", _afterDestroy);
_updateOptions(options, "afterDestroyedChange", _afterDestroyedChange);
_updateOptions(options, "afterFirstPageLinkChange", _afterFirstPageLinkChange);
_updateOptions(options, "afterFirstPageLinkLabelChange", _afterFirstPageLinkLabelChange);
_updateOptions(options, "afterInit", _afterInit);
_updateOptions(options, "afterInitializedChange", _afterInitializedChange);
_updateOptions(options, "afterLastPageLinkChange", _afterLastPageLinkChange);
_updateOptions(options, "afterLastPageLinkLabelChange", _afterLastPageLinkLabelChange);
_updateOptions(options, "afterMaxPageLinksChange", _afterMaxPageLinksChange);
_updateOptions(options, "afterNextPageLinkChange", _afterNextPageLinkChange);
_updateOptions(options, "afterNextPageLinkLabelChange", _afterNextPageLinkLabelChange);
_updateOptions(options, "afterPageChange", _afterPageChange);
_updateOptions(options, "afterPageContainerTemplateChange", _afterPageContainerTemplateChange);
_updateOptions(options, "afterPageLinkContentChange", _afterPageLinkContentChange);
_updateOptions(options, "afterPageLinkTemplateChange", _afterPageLinkTemplateChange);
_updateOptions(options, "afterPageReportElChange", _afterPageReportElChange);
_updateOptions(options, "afterPageReportLabelTemplateChange", _afterPageReportLabelTemplateChange);
_updateOptions(options, "afterPrevPageLinkChange", _afterPrevPageLinkChange);
_updateOptions(options, "afterPrevPageLinkLabelChange", _afterPrevPageLinkLabelChange);
_updateOptions(options, "afterRowsPerPageChange", _afterRowsPerPageChange);
_updateOptions(options, "afterRowsPerPageElChange", _afterRowsPerPageElChange);
_updateOptions(options, "afterRowsPerPageOptionsChange", _afterRowsPerPageOptionsChange);
_updateOptions(options, "afterStateChange", _afterStateChange);
_updateOptions(options, "afterTemplateChange", _afterTemplateChange);
_updateOptions(options, "afterTotalChange", _afterTotalChange);
_updateOptions(options, "afterTotalElChange", _afterTotalElChange);
_updateOptions(options, "afterTotalLabelChange", _afterTotalLabelChange);
_updateOptions(options, "afterTotalPagesChange", _afterTotalPagesChange);
_updateOptions(options, "onAlwaysVisibleChange", _onAlwaysVisibleChange);
_updateOptions(options, "onContainersChange", _onContainersChange);
_updateOptions(options, "onDestroy", _onDestroy);
_updateOptions(options, "onDestroyedChange", _onDestroyedChange);
_updateOptions(options, "onFirstPageLinkChange", _onFirstPageLinkChange);
_updateOptions(options, "onFirstPageLinkLabelChange", _onFirstPageLinkLabelChange);
_updateOptions(options, "onInit", _onInit);
_updateOptions(options, "onInitializedChange", _onInitializedChange);
_updateOptions(options, "onLastPageLinkChange", _onLastPageLinkChange);
_updateOptions(options, "onLastPageLinkLabelChange", _onLastPageLinkLabelChange);
_updateOptions(options, "onMaxPageLinksChange", _onMaxPageLinksChange);
_updateOptions(options, "onNextPageLinkChange", _onNextPageLinkChange);
_updateOptions(options, "onNextPageLinkLabelChange", _onNextPageLinkLabelChange);
_updateOptions(options, "onPageChange", _onPageChange);
_updateOptions(options, "onPageContainerTemplateChange", _onPageContainerTemplateChange);
_updateOptions(options, "onPageLinkContentChange", _onPageLinkContentChange);
_updateOptions(options, "onPageLinkTemplateChange", _onPageLinkTemplateChange);
_updateOptions(options, "onPageReportElChange", _onPageReportElChange);
_updateOptions(options, "onPageReportLabelTemplateChange", _onPageReportLabelTemplateChange);
_updateOptions(options, "onPrevPageLinkChange", _onPrevPageLinkChange);
_updateOptions(options, "onPrevPageLinkLabelChange", _onPrevPageLinkLabelChange);
_updateOptions(options, "onRowsPerPageChange", _onRowsPerPageChange);
_updateOptions(options, "onRowsPerPageElChange", _onRowsPerPageElChange);
_updateOptions(options, "onRowsPerPageOptionsChange", _onRowsPerPageOptionsChange);
_updateOptions(options, "onStateChange", _onStateChange);
_updateOptions(options, "onTemplateChange", _onTemplateChange);
_updateOptions(options, "onTotalChange", _onTotalChange);
_updateOptions(options, "onTotalElChange", _onTotalElChange);
_updateOptions(options, "onTotalLabelChange", _onTotalLabelChange);
_updateOptions(options, "onTotalPagesChange", _onTotalPagesChange);
%>

<%@ include file="init-ext.jsp" %>