# Markdown

### Table Syntax
``` plaintext
|Header1 |Header2  | Header3|
--- | --- | ---|
|data1|data2|data3|
|data11|data12|data13|
```
generates
|Header1 |Header2  | Header3|
--- | --- | ---|
|data1|data2|data3|
|data11|data12|data13|

### Sample Link
 [Tuxedo DevOps](https://github.com/cebcar/Tuxedo/blob/main/TechDocs/DevOps/)

## IntelliJ Configuration for Markdown
*Live Templates from this section may still have value*

#### Editor
##### General
- Breadcrumbs
  - Show Breadcrumbs
    - [x] Markdown

##### Code Style
- *indentation 2 for html, markdown*
  - HTML: Tab Size 2; Indent 2; Continuation Indent 4
  - Markdown: set from HTML

##### Inspections
- Unresolved file references; Warning

##### Live Templates (syntax was for JetBrains - obsolete)
##### cd.tool
- tool document with profile
  - with $INDENT$=(non-breaking space)x8
  ```plaintext
  # $TOOL_NAME$
  $INDENT$[$TOOL_NAME$ Tool Profile](#$TOOL_NAME_LC$-profile)<br/>
  $INDENT$*$BLURB$*<br/>
  ## Tool $TOOL_NAME$
     $END$<br/>
     ## *$TOOL_NAME$ Profile*
  $INDENT$$TOOLTYPE$ @ $LOCATION$<br/>$INDENT$*$BLURB$*<br/>
  
  **Version**: $VERSION$<br/>
  **Source**: $SOURCE$<br/>
  **Obtained**: $METHOD$; $DATE_PRICE$<br/>
  **License**: $LICENSE$<br/>
  **Critical Data**: $CRITICALDATA$<br/>
  **Installation**: $INSTALLATION$<br/>
  **Documentation**: $DOCUMENTATION$<br/>
  
  ### $TOOL_NAME$ Configuration
  ### $TOOL_NAME$ Automation
  ### $TOOL_NAME$ Shortcuts
  ### $TOOL_NAME$ Alternatives Considered
  ```

##### color code with swatch
- cd.color
  ```plaintext
  #$COLOR_CODE$&nbsp;<span style="background-color: #$COLOR_CODE$">&nbsp;&nbsp;&nbsp;&nbsp;</span>
  ```

##### link to Tuxedo/.../DevOps
- cd.devops
  ```plaintext
  https://github.com/cebcar/Tuxedo/blob/main/TechDocs/DevOps/
  ```
