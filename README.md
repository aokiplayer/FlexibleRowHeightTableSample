# FlexibleRowHeightTableSample

Sample of UITableView. Flexible height of custom cell.

## Requirements
- Xcode 7.3.1(iOS 9.3/Swift 2.2)

## Description

For flexible cell height, you can use these properties.
- UITableView#estimatedRowHeight
    - need to set positive value. 
- UITableView#rowHeight
    - need to set `UITableViewAutomaticDimension`

If you use UITextView in your custom cell, set `isScrollEnabled` property to false.
