<%@ include file="/html/taglib/alloy/init.jsp" %>

<%
Map<String, Object> dynamicAttributes = (Map<String, Object>)request.getAttribute("alloy:overlay-context-panel:dynamicAttributes");
Map<String, Object> scopedAttributes = (Map<String, Object>)request.getAttribute("alloy:overlay-context-panel:scopedAttributes");

Map<String, Object> options = new HashMap<String, Object>();

options.putAll(scopedAttributes);
options.putAll(dynamicAttributes);

java.lang.Object _boundingBox = (java.lang.Object)request.getAttribute("alloy:overlay-context-panel:boundingBox");
java.lang.Object _contentBox = (java.lang.Object)request.getAttribute("alloy:overlay-context-panel:contentBox");
java.lang.Object _srcNode = (java.lang.Object)request.getAttribute("alloy:overlay-context-panel:srcNode");

boolean hasBoundingBox = GetterUtil.getBoolean(String.valueOf(_boundingBox));
boolean hasContentBox = GetterUtil.getBoolean(String.valueOf(_contentBox));
boolean hasSrcNode = GetterUtil.getBoolean(String.valueOf(_srcNode));

java.util.HashMap _align = JSONFactoryUtil.getHashMap(GetterUtil.getObject((java.lang.Object)request.getAttribute("alloy:overlay-context-panel:align"), "{ node: null, points: [ TL, BL ] }"));
java.util.HashMap _anim = JSONFactoryUtil.getHashMap(GetterUtil.getObject((java.lang.Object)request.getAttribute("alloy:overlay-context-panel:anim"), "{ show: false }"));
java.lang.String _arrow = GetterUtil.getString((java.lang.String)request.getAttribute("alloy:overlay-context-panel:arrow"));
java.lang.Object _overlaycontextpanelBodyContent = GetterUtil.getObject((java.lang.Object)request.getAttribute("alloy:overlay-context-panel:overlaycontextpanelBodyContent"));
java.lang.Boolean _cancellableHide = GetterUtil.getBoolean((java.lang.Boolean)request.getAttribute("alloy:overlay-context-panel:cancellableHide"), true);
java.lang.Object _centered = GetterUtil.getObject((java.lang.Object)request.getAttribute("alloy:overlay-context-panel:centered"), false);
java.lang.Object _constrain = GetterUtil.getObject((java.lang.Object)request.getAttribute("alloy:overlay-context-panel:constrain"));
java.lang.String _cssClass = GetterUtil.getString((java.lang.String)request.getAttribute("alloy:overlay-context-panel:cssClass"));
java.lang.Object _currentNode = GetterUtil.getObject((java.lang.Object)request.getAttribute("alloy:overlay-context-panel:currentNode"));
java.lang.Boolean _destroyed = GetterUtil.getBoolean((java.lang.Boolean)request.getAttribute("alloy:overlay-context-panel:destroyed"), false);
java.lang.Boolean _disabled = GetterUtil.getBoolean((java.lang.Boolean)request.getAttribute("alloy:overlay-context-panel:disabled"), false);
java.lang.Object _fillHeight = GetterUtil.getObject((java.lang.Object)request.getAttribute("alloy:overlay-context-panel:fillHeight"));
java.lang.Boolean _focused = GetterUtil.getBoolean((java.lang.Boolean)request.getAttribute("alloy:overlay-context-panel:focused"), false);
java.lang.Object _footerContent = GetterUtil.getObject((java.lang.Object)request.getAttribute("alloy:overlay-context-panel:footerContent"));
java.lang.Object _headerContent = GetterUtil.getObject((java.lang.Object)request.getAttribute("alloy:overlay-context-panel:headerContent"));
java.lang.Object _height = GetterUtil.getObject((java.lang.Object)request.getAttribute("alloy:overlay-context-panel:height"));
java.lang.String _hideClass = GetterUtil.getString((java.lang.String)request.getAttribute("alloy:overlay-context-panel:hideClass"), "aui-helper-hidden");
java.lang.Number _hideDelay = GetterUtil.getNumber(String.valueOf(request.getAttribute("alloy:overlay-context-panel:hideDelay")), 0);
java.lang.String _hideOn = GetterUtil.getString((java.lang.String)request.getAttribute("alloy:overlay-context-panel:hideOn"), "click");
java.lang.Boolean _hideOnDocumentClick = GetterUtil.getBoolean((java.lang.Boolean)request.getAttribute("alloy:overlay-context-panel:hideOnDocumentClick"), true);
java.lang.String _overlaycontextpanelId = GetterUtil.getString((java.lang.String)request.getAttribute("alloy:overlay-context-panel:overlaycontextpanelId"));
java.lang.Boolean _initialized = GetterUtil.getBoolean((java.lang.Boolean)request.getAttribute("alloy:overlay-context-panel:initialized"), false);
java.lang.Boolean _preventOverlap = GetterUtil.getBoolean((java.lang.Boolean)request.getAttribute("alloy:overlay-context-panel:preventOverlap"), false);
java.lang.Boolean _render = GetterUtil.getBoolean((java.lang.Boolean)request.getAttribute("alloy:overlay-context-panel:render"), false);
java.lang.Boolean _rendered = GetterUtil.getBoolean((java.lang.Boolean)request.getAttribute("alloy:overlay-context-panel:rendered"), false);
java.lang.Boolean _shim = GetterUtil.getBoolean((java.lang.Boolean)request.getAttribute("alloy:overlay-context-panel:shim"), false);
java.lang.Boolean _showArrow = GetterUtil.getBoolean((java.lang.Boolean)request.getAttribute("alloy:overlay-context-panel:showArrow"), true);
java.lang.Number _showDelay = GetterUtil.getNumber(String.valueOf(request.getAttribute("alloy:overlay-context-panel:showDelay")), 0);
java.lang.String _showOn = GetterUtil.getString((java.lang.String)request.getAttribute("alloy:overlay-context-panel:showOn"), "click");
java.lang.Boolean _stack = GetterUtil.getBoolean((java.lang.Boolean)request.getAttribute("alloy:overlay-context-panel:stack"), true);
java.util.HashMap _strings = JSONFactoryUtil.getHashMap(GetterUtil.getObject((java.lang.Object)request.getAttribute("alloy:overlay-context-panel:strings")));
java.lang.Number _tabIndex = GetterUtil.getNumber(String.valueOf(request.getAttribute("alloy:overlay-context-panel:tabIndex")), 0);
java.lang.Object _trigger = GetterUtil.getObject((java.lang.Object)request.getAttribute("alloy:overlay-context-panel:trigger"));
java.lang.Boolean _visible = GetterUtil.getBoolean((java.lang.Boolean)request.getAttribute("alloy:overlay-context-panel:visible"), false);
java.lang.Object _width = GetterUtil.getObject((java.lang.Object)request.getAttribute("alloy:overlay-context-panel:width"));
java.lang.Number _x = GetterUtil.getNumber(String.valueOf(request.getAttribute("alloy:overlay-context-panel:x")), 0);
java.util.ArrayList _xy = JSONFactoryUtil.getArrayList(GetterUtil.getObject((java.lang.Object)request.getAttribute("alloy:overlay-context-panel:xy"), "[0,0]"));
java.lang.Number _y = GetterUtil.getNumber(String.valueOf(request.getAttribute("alloy:overlay-context-panel:y")), 0);
java.lang.Number _zIndex = GetterUtil.getNumber(String.valueOf(request.getAttribute("alloy:overlay-context-panel:zIndex")), 0);
java.lang.Object _afterAlignChange = GetterUtil.getObject((java.lang.Object)request.getAttribute("alloy:overlay-context-panel:afterAlignChange"));
java.lang.Object _afterAnimChange = GetterUtil.getObject((java.lang.Object)request.getAttribute("alloy:overlay-context-panel:afterAnimChange"));
java.lang.Object _afterArrowChange = GetterUtil.getObject((java.lang.Object)request.getAttribute("alloy:overlay-context-panel:afterArrowChange"));
java.lang.Object _afterBodyContentChange = GetterUtil.getObject((java.lang.Object)request.getAttribute("alloy:overlay-context-panel:afterBodyContentChange"));
java.lang.Object _afterBoundingBoxChange = GetterUtil.getObject((java.lang.Object)request.getAttribute("alloy:overlay-context-panel:afterBoundingBoxChange"));
java.lang.Object _afterCancellableHideChange = GetterUtil.getObject((java.lang.Object)request.getAttribute("alloy:overlay-context-panel:afterCancellableHideChange"));
java.lang.Object _afterCenteredChange = GetterUtil.getObject((java.lang.Object)request.getAttribute("alloy:overlay-context-panel:afterCenteredChange"));
java.lang.Object _afterConstrainChange = GetterUtil.getObject((java.lang.Object)request.getAttribute("alloy:overlay-context-panel:afterConstrainChange"));
java.lang.Object _afterContentBoxChange = GetterUtil.getObject((java.lang.Object)request.getAttribute("alloy:overlay-context-panel:afterContentBoxChange"));
java.lang.Object _afterCssClassChange = GetterUtil.getObject((java.lang.Object)request.getAttribute("alloy:overlay-context-panel:afterCssClassChange"));
java.lang.Object _afterCurrentNodeChange = GetterUtil.getObject((java.lang.Object)request.getAttribute("alloy:overlay-context-panel:afterCurrentNodeChange"));
java.lang.Object _afterDestroy = GetterUtil.getObject((java.lang.Object)request.getAttribute("alloy:overlay-context-panel:afterDestroy"));
java.lang.Object _afterDestroyedChange = GetterUtil.getObject((java.lang.Object)request.getAttribute("alloy:overlay-context-panel:afterDestroyedChange"));
java.lang.Object _afterDisabledChange = GetterUtil.getObject((java.lang.Object)request.getAttribute("alloy:overlay-context-panel:afterDisabledChange"));
java.lang.Object _afterFillHeightChange = GetterUtil.getObject((java.lang.Object)request.getAttribute("alloy:overlay-context-panel:afterFillHeightChange"));
java.lang.Object _afterFocusedChange = GetterUtil.getObject((java.lang.Object)request.getAttribute("alloy:overlay-context-panel:afterFocusedChange"));
java.lang.Object _afterFooterContentChange = GetterUtil.getObject((java.lang.Object)request.getAttribute("alloy:overlay-context-panel:afterFooterContentChange"));
java.lang.Object _afterHeaderContentChange = GetterUtil.getObject((java.lang.Object)request.getAttribute("alloy:overlay-context-panel:afterHeaderContentChange"));
java.lang.Object _afterHeightChange = GetterUtil.getObject((java.lang.Object)request.getAttribute("alloy:overlay-context-panel:afterHeightChange"));
java.lang.Object _afterHideClassChange = GetterUtil.getObject((java.lang.Object)request.getAttribute("alloy:overlay-context-panel:afterHideClassChange"));
java.lang.Object _afterHideDelayChange = GetterUtil.getObject((java.lang.Object)request.getAttribute("alloy:overlay-context-panel:afterHideDelayChange"));
java.lang.Object _afterHideOnChange = GetterUtil.getObject((java.lang.Object)request.getAttribute("alloy:overlay-context-panel:afterHideOnChange"));
java.lang.Object _afterHideOnDocumentClickChange = GetterUtil.getObject((java.lang.Object)request.getAttribute("alloy:overlay-context-panel:afterHideOnDocumentClickChange"));
java.lang.Object _afterIdChange = GetterUtil.getObject((java.lang.Object)request.getAttribute("alloy:overlay-context-panel:afterIdChange"));
java.lang.Object _afterInit = GetterUtil.getObject((java.lang.Object)request.getAttribute("alloy:overlay-context-panel:afterInit"));
java.lang.Object _afterInitializedChange = GetterUtil.getObject((java.lang.Object)request.getAttribute("alloy:overlay-context-panel:afterInitializedChange"));
java.lang.Object _afterPreventOverlapChange = GetterUtil.getObject((java.lang.Object)request.getAttribute("alloy:overlay-context-panel:afterPreventOverlapChange"));
java.lang.Object _afterRenderChange = GetterUtil.getObject((java.lang.Object)request.getAttribute("alloy:overlay-context-panel:afterRenderChange"));
java.lang.Object _afterRenderedChange = GetterUtil.getObject((java.lang.Object)request.getAttribute("alloy:overlay-context-panel:afterRenderedChange"));
java.lang.Object _afterShimChange = GetterUtil.getObject((java.lang.Object)request.getAttribute("alloy:overlay-context-panel:afterShimChange"));
java.lang.Object _afterShowArrowChange = GetterUtil.getObject((java.lang.Object)request.getAttribute("alloy:overlay-context-panel:afterShowArrowChange"));
java.lang.Object _afterShowDelayChange = GetterUtil.getObject((java.lang.Object)request.getAttribute("alloy:overlay-context-panel:afterShowDelayChange"));
java.lang.Object _afterShowOnChange = GetterUtil.getObject((java.lang.Object)request.getAttribute("alloy:overlay-context-panel:afterShowOnChange"));
java.lang.Object _afterSrcNodeChange = GetterUtil.getObject((java.lang.Object)request.getAttribute("alloy:overlay-context-panel:afterSrcNodeChange"));
java.lang.Object _afterStackChange = GetterUtil.getObject((java.lang.Object)request.getAttribute("alloy:overlay-context-panel:afterStackChange"));
java.lang.Object _afterStringsChange = GetterUtil.getObject((java.lang.Object)request.getAttribute("alloy:overlay-context-panel:afterStringsChange"));
java.lang.Object _afterTabIndexChange = GetterUtil.getObject((java.lang.Object)request.getAttribute("alloy:overlay-context-panel:afterTabIndexChange"));
java.lang.Object _afterTriggerChange = GetterUtil.getObject((java.lang.Object)request.getAttribute("alloy:overlay-context-panel:afterTriggerChange"));
java.lang.Object _afterVisibleChange = GetterUtil.getObject((java.lang.Object)request.getAttribute("alloy:overlay-context-panel:afterVisibleChange"));
java.lang.Object _afterContentUpdate = GetterUtil.getObject((java.lang.Object)request.getAttribute("alloy:overlay-context-panel:afterContentUpdate"));
java.lang.Object _afterRender = GetterUtil.getObject((java.lang.Object)request.getAttribute("alloy:overlay-context-panel:afterRender"));
java.lang.Object _afterWidthChange = GetterUtil.getObject((java.lang.Object)request.getAttribute("alloy:overlay-context-panel:afterWidthChange"));
java.lang.Object _afterXChange = GetterUtil.getObject((java.lang.Object)request.getAttribute("alloy:overlay-context-panel:afterXChange"));
java.lang.Object _afterXyChange = GetterUtil.getObject((java.lang.Object)request.getAttribute("alloy:overlay-context-panel:afterXyChange"));
java.lang.Object _afterYChange = GetterUtil.getObject((java.lang.Object)request.getAttribute("alloy:overlay-context-panel:afterYChange"));
java.lang.Object _afterZIndexChange = GetterUtil.getObject((java.lang.Object)request.getAttribute("alloy:overlay-context-panel:afterZIndexChange"));
java.lang.Object _onAlignChange = GetterUtil.getObject((java.lang.Object)request.getAttribute("alloy:overlay-context-panel:onAlignChange"));
java.lang.Object _onAnimChange = GetterUtil.getObject((java.lang.Object)request.getAttribute("alloy:overlay-context-panel:onAnimChange"));
java.lang.Object _onArrowChange = GetterUtil.getObject((java.lang.Object)request.getAttribute("alloy:overlay-context-panel:onArrowChange"));
java.lang.Object _onBodyContentChange = GetterUtil.getObject((java.lang.Object)request.getAttribute("alloy:overlay-context-panel:onBodyContentChange"));
java.lang.Object _onBoundingBoxChange = GetterUtil.getObject((java.lang.Object)request.getAttribute("alloy:overlay-context-panel:onBoundingBoxChange"));
java.lang.Object _onCancellableHideChange = GetterUtil.getObject((java.lang.Object)request.getAttribute("alloy:overlay-context-panel:onCancellableHideChange"));
java.lang.Object _onCenteredChange = GetterUtil.getObject((java.lang.Object)request.getAttribute("alloy:overlay-context-panel:onCenteredChange"));
java.lang.Object _onConstrainChange = GetterUtil.getObject((java.lang.Object)request.getAttribute("alloy:overlay-context-panel:onConstrainChange"));
java.lang.Object _onContentBoxChange = GetterUtil.getObject((java.lang.Object)request.getAttribute("alloy:overlay-context-panel:onContentBoxChange"));
java.lang.Object _onCssClassChange = GetterUtil.getObject((java.lang.Object)request.getAttribute("alloy:overlay-context-panel:onCssClassChange"));
java.lang.Object _onCurrentNodeChange = GetterUtil.getObject((java.lang.Object)request.getAttribute("alloy:overlay-context-panel:onCurrentNodeChange"));
java.lang.Object _onDestroy = GetterUtil.getObject((java.lang.Object)request.getAttribute("alloy:overlay-context-panel:onDestroy"));
java.lang.Object _onDestroyedChange = GetterUtil.getObject((java.lang.Object)request.getAttribute("alloy:overlay-context-panel:onDestroyedChange"));
java.lang.Object _onDisabledChange = GetterUtil.getObject((java.lang.Object)request.getAttribute("alloy:overlay-context-panel:onDisabledChange"));
java.lang.Object _onFillHeightChange = GetterUtil.getObject((java.lang.Object)request.getAttribute("alloy:overlay-context-panel:onFillHeightChange"));
java.lang.Object _onFocusedChange = GetterUtil.getObject((java.lang.Object)request.getAttribute("alloy:overlay-context-panel:onFocusedChange"));
java.lang.Object _onFooterContentChange = GetterUtil.getObject((java.lang.Object)request.getAttribute("alloy:overlay-context-panel:onFooterContentChange"));
java.lang.Object _onHeaderContentChange = GetterUtil.getObject((java.lang.Object)request.getAttribute("alloy:overlay-context-panel:onHeaderContentChange"));
java.lang.Object _onHeightChange = GetterUtil.getObject((java.lang.Object)request.getAttribute("alloy:overlay-context-panel:onHeightChange"));
java.lang.Object _onHideClassChange = GetterUtil.getObject((java.lang.Object)request.getAttribute("alloy:overlay-context-panel:onHideClassChange"));
java.lang.Object _onHideDelayChange = GetterUtil.getObject((java.lang.Object)request.getAttribute("alloy:overlay-context-panel:onHideDelayChange"));
java.lang.Object _onHideOnChange = GetterUtil.getObject((java.lang.Object)request.getAttribute("alloy:overlay-context-panel:onHideOnChange"));
java.lang.Object _onHideOnDocumentClickChange = GetterUtil.getObject((java.lang.Object)request.getAttribute("alloy:overlay-context-panel:onHideOnDocumentClickChange"));
java.lang.Object _onIdChange = GetterUtil.getObject((java.lang.Object)request.getAttribute("alloy:overlay-context-panel:onIdChange"));
java.lang.Object _onInit = GetterUtil.getObject((java.lang.Object)request.getAttribute("alloy:overlay-context-panel:onInit"));
java.lang.Object _onInitializedChange = GetterUtil.getObject((java.lang.Object)request.getAttribute("alloy:overlay-context-panel:onInitializedChange"));
java.lang.Object _onPreventOverlapChange = GetterUtil.getObject((java.lang.Object)request.getAttribute("alloy:overlay-context-panel:onPreventOverlapChange"));
java.lang.Object _onRenderChange = GetterUtil.getObject((java.lang.Object)request.getAttribute("alloy:overlay-context-panel:onRenderChange"));
java.lang.Object _onRenderedChange = GetterUtil.getObject((java.lang.Object)request.getAttribute("alloy:overlay-context-panel:onRenderedChange"));
java.lang.Object _onShimChange = GetterUtil.getObject((java.lang.Object)request.getAttribute("alloy:overlay-context-panel:onShimChange"));
java.lang.Object _onShowArrowChange = GetterUtil.getObject((java.lang.Object)request.getAttribute("alloy:overlay-context-panel:onShowArrowChange"));
java.lang.Object _onShowDelayChange = GetterUtil.getObject((java.lang.Object)request.getAttribute("alloy:overlay-context-panel:onShowDelayChange"));
java.lang.Object _onShowOnChange = GetterUtil.getObject((java.lang.Object)request.getAttribute("alloy:overlay-context-panel:onShowOnChange"));
java.lang.Object _onSrcNodeChange = GetterUtil.getObject((java.lang.Object)request.getAttribute("alloy:overlay-context-panel:onSrcNodeChange"));
java.lang.Object _onStackChange = GetterUtil.getObject((java.lang.Object)request.getAttribute("alloy:overlay-context-panel:onStackChange"));
java.lang.Object _onStringsChange = GetterUtil.getObject((java.lang.Object)request.getAttribute("alloy:overlay-context-panel:onStringsChange"));
java.lang.Object _onTabIndexChange = GetterUtil.getObject((java.lang.Object)request.getAttribute("alloy:overlay-context-panel:onTabIndexChange"));
java.lang.Object _onTriggerChange = GetterUtil.getObject((java.lang.Object)request.getAttribute("alloy:overlay-context-panel:onTriggerChange"));
java.lang.Object _onVisibleChange = GetterUtil.getObject((java.lang.Object)request.getAttribute("alloy:overlay-context-panel:onVisibleChange"));
java.lang.Object _onContentUpdate = GetterUtil.getObject((java.lang.Object)request.getAttribute("alloy:overlay-context-panel:onContentUpdate"));
java.lang.Object _onRender = GetterUtil.getObject((java.lang.Object)request.getAttribute("alloy:overlay-context-panel:onRender"));
java.lang.Object _onWidthChange = GetterUtil.getObject((java.lang.Object)request.getAttribute("alloy:overlay-context-panel:onWidthChange"));
java.lang.Object _onXChange = GetterUtil.getObject((java.lang.Object)request.getAttribute("alloy:overlay-context-panel:onXChange"));
java.lang.Object _onXyChange = GetterUtil.getObject((java.lang.Object)request.getAttribute("alloy:overlay-context-panel:onXyChange"));
java.lang.Object _onYChange = GetterUtil.getObject((java.lang.Object)request.getAttribute("alloy:overlay-context-panel:onYChange"));
java.lang.Object _onZIndexChange = GetterUtil.getObject((java.lang.Object)request.getAttribute("alloy:overlay-context-panel:onZIndexChange"));

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

_updateOptions(options, "align", _align);
_updateOptions(options, "anim", _anim);
_updateOptions(options, "arrow", _arrow);
_updateOptions(options, "overlaycontextpanelBodyContent", _overlaycontextpanelBodyContent);
_updateOptions(options, "boundingBox", _boundingBox);
_updateOptions(options, "cancellableHide", _cancellableHide);
_updateOptions(options, "centered", _centered);
_updateOptions(options, "constrain", _constrain);
_updateOptions(options, "contentBox", _contentBox);
_updateOptions(options, "cssClass", _cssClass);
_updateOptions(options, "currentNode", _currentNode);
_updateOptions(options, "destroyed", _destroyed);
_updateOptions(options, "disabled", _disabled);
_updateOptions(options, "fillHeight", _fillHeight);
_updateOptions(options, "focused", _focused);
_updateOptions(options, "footerContent", _footerContent);
_updateOptions(options, "headerContent", _headerContent);
_updateOptions(options, "height", _height);
_updateOptions(options, "hideClass", _hideClass);
_updateOptions(options, "hideDelay", _hideDelay);
_updateOptions(options, "hideOn", _hideOn);
_updateOptions(options, "hideOnDocumentClick", _hideOnDocumentClick);
_updateOptions(options, "overlaycontextpanelId", _overlaycontextpanelId);
_updateOptions(options, "initialized", _initialized);
_updateOptions(options, "preventOverlap", _preventOverlap);
_updateOptions(options, "render", _render);
_updateOptions(options, "rendered", _rendered);
_updateOptions(options, "shim", _shim);
_updateOptions(options, "showArrow", _showArrow);
_updateOptions(options, "showDelay", _showDelay);
_updateOptions(options, "showOn", _showOn);
_updateOptions(options, "srcNode", _srcNode);
_updateOptions(options, "stack", _stack);
_updateOptions(options, "strings", _strings);
_updateOptions(options, "tabIndex", _tabIndex);
_updateOptions(options, "trigger", _trigger);
_updateOptions(options, "visible", _visible);
_updateOptions(options, "width", _width);
_updateOptions(options, "x", _x);
_updateOptions(options, "xy", _xy);
_updateOptions(options, "y", _y);
_updateOptions(options, "zIndex", _zIndex);
_updateOptions(options, "afterAlignChange", _afterAlignChange);
_updateOptions(options, "afterAnimChange", _afterAnimChange);
_updateOptions(options, "afterArrowChange", _afterArrowChange);
_updateOptions(options, "afterBodyContentChange", _afterBodyContentChange);
_updateOptions(options, "afterBoundingBoxChange", _afterBoundingBoxChange);
_updateOptions(options, "afterCancellableHideChange", _afterCancellableHideChange);
_updateOptions(options, "afterCenteredChange", _afterCenteredChange);
_updateOptions(options, "afterConstrainChange", _afterConstrainChange);
_updateOptions(options, "afterContentBoxChange", _afterContentBoxChange);
_updateOptions(options, "afterCssClassChange", _afterCssClassChange);
_updateOptions(options, "afterCurrentNodeChange", _afterCurrentNodeChange);
_updateOptions(options, "afterDestroy", _afterDestroy);
_updateOptions(options, "afterDestroyedChange", _afterDestroyedChange);
_updateOptions(options, "afterDisabledChange", _afterDisabledChange);
_updateOptions(options, "afterFillHeightChange", _afterFillHeightChange);
_updateOptions(options, "afterFocusedChange", _afterFocusedChange);
_updateOptions(options, "afterFooterContentChange", _afterFooterContentChange);
_updateOptions(options, "afterHeaderContentChange", _afterHeaderContentChange);
_updateOptions(options, "afterHeightChange", _afterHeightChange);
_updateOptions(options, "afterHideClassChange", _afterHideClassChange);
_updateOptions(options, "afterHideDelayChange", _afterHideDelayChange);
_updateOptions(options, "afterHideOnChange", _afterHideOnChange);
_updateOptions(options, "afterHideOnDocumentClickChange", _afterHideOnDocumentClickChange);
_updateOptions(options, "afterIdChange", _afterIdChange);
_updateOptions(options, "afterInit", _afterInit);
_updateOptions(options, "afterInitializedChange", _afterInitializedChange);
_updateOptions(options, "afterPreventOverlapChange", _afterPreventOverlapChange);
_updateOptions(options, "afterRenderChange", _afterRenderChange);
_updateOptions(options, "afterRenderedChange", _afterRenderedChange);
_updateOptions(options, "afterShimChange", _afterShimChange);
_updateOptions(options, "afterShowArrowChange", _afterShowArrowChange);
_updateOptions(options, "afterShowDelayChange", _afterShowDelayChange);
_updateOptions(options, "afterShowOnChange", _afterShowOnChange);
_updateOptions(options, "afterSrcNodeChange", _afterSrcNodeChange);
_updateOptions(options, "afterStackChange", _afterStackChange);
_updateOptions(options, "afterStringsChange", _afterStringsChange);
_updateOptions(options, "afterTabIndexChange", _afterTabIndexChange);
_updateOptions(options, "afterTriggerChange", _afterTriggerChange);
_updateOptions(options, "afterVisibleChange", _afterVisibleChange);
_updateOptions(options, "afterContentUpdate", _afterContentUpdate);
_updateOptions(options, "afterRender", _afterRender);
_updateOptions(options, "afterWidthChange", _afterWidthChange);
_updateOptions(options, "afterXChange", _afterXChange);
_updateOptions(options, "afterXyChange", _afterXyChange);
_updateOptions(options, "afterYChange", _afterYChange);
_updateOptions(options, "afterZIndexChange", _afterZIndexChange);
_updateOptions(options, "onAlignChange", _onAlignChange);
_updateOptions(options, "onAnimChange", _onAnimChange);
_updateOptions(options, "onArrowChange", _onArrowChange);
_updateOptions(options, "onBodyContentChange", _onBodyContentChange);
_updateOptions(options, "onBoundingBoxChange", _onBoundingBoxChange);
_updateOptions(options, "onCancellableHideChange", _onCancellableHideChange);
_updateOptions(options, "onCenteredChange", _onCenteredChange);
_updateOptions(options, "onConstrainChange", _onConstrainChange);
_updateOptions(options, "onContentBoxChange", _onContentBoxChange);
_updateOptions(options, "onCssClassChange", _onCssClassChange);
_updateOptions(options, "onCurrentNodeChange", _onCurrentNodeChange);
_updateOptions(options, "onDestroy", _onDestroy);
_updateOptions(options, "onDestroyedChange", _onDestroyedChange);
_updateOptions(options, "onDisabledChange", _onDisabledChange);
_updateOptions(options, "onFillHeightChange", _onFillHeightChange);
_updateOptions(options, "onFocusedChange", _onFocusedChange);
_updateOptions(options, "onFooterContentChange", _onFooterContentChange);
_updateOptions(options, "onHeaderContentChange", _onHeaderContentChange);
_updateOptions(options, "onHeightChange", _onHeightChange);
_updateOptions(options, "onHideClassChange", _onHideClassChange);
_updateOptions(options, "onHideDelayChange", _onHideDelayChange);
_updateOptions(options, "onHideOnChange", _onHideOnChange);
_updateOptions(options, "onHideOnDocumentClickChange", _onHideOnDocumentClickChange);
_updateOptions(options, "onIdChange", _onIdChange);
_updateOptions(options, "onInit", _onInit);
_updateOptions(options, "onInitializedChange", _onInitializedChange);
_updateOptions(options, "onPreventOverlapChange", _onPreventOverlapChange);
_updateOptions(options, "onRenderChange", _onRenderChange);
_updateOptions(options, "onRenderedChange", _onRenderedChange);
_updateOptions(options, "onShimChange", _onShimChange);
_updateOptions(options, "onShowArrowChange", _onShowArrowChange);
_updateOptions(options, "onShowDelayChange", _onShowDelayChange);
_updateOptions(options, "onShowOnChange", _onShowOnChange);
_updateOptions(options, "onSrcNodeChange", _onSrcNodeChange);
_updateOptions(options, "onStackChange", _onStackChange);
_updateOptions(options, "onStringsChange", _onStringsChange);
_updateOptions(options, "onTabIndexChange", _onTabIndexChange);
_updateOptions(options, "onTriggerChange", _onTriggerChange);
_updateOptions(options, "onVisibleChange", _onVisibleChange);
_updateOptions(options, "onContentUpdate", _onContentUpdate);
_updateOptions(options, "onRender", _onRender);
_updateOptions(options, "onWidthChange", _onWidthChange);
_updateOptions(options, "onXChange", _onXChange);
_updateOptions(options, "onXyChange", _onXyChange);
_updateOptions(options, "onYChange", _onYChange);
_updateOptions(options, "onZIndexChange", _onZIndexChange);
%>

<%@ include file="init-ext.jsp" %>