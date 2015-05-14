xcopy /y d:\maven\repository\philemon\jars\philemon-typewise-1.0-rc97.jar .\target\client
xcopy /y d:\maven\repository\philemon\jars\philemon-utils-1.0.1.jar .\target\client

xcopy /y d:\maven\repository\commons-codec\jars\commons-codec-1.3.jar .\target\client
xcopy /y d:\maven\repository\commons-httpclient\jars\commons-httpclient-3.0.jar .\target\client
xcopy /y d:\maven\repository\commons-logging\jars\commons-logging-1.0.4.jar .\target\client
xcopy /y d:\maven\repository\log4j\jars\log4j-1.2.8.jar .\target\client
xcopy /y d:\maven\repository\geronimo-spec\jars\geronimo-spec-servlet-2.4-rc2.jar .\target\client

xcopy /y /s lib\3232\*.jar .\target\client
xcopy /y /s lib\3232\*.dll .\target\client\test

jar -cvf .\target\client\log4j_properties.jar src\client\log4j.properties

jarsigner -keystore src\client\keystore -storepass philemon .\target\client\commons-codec-1.3.jar typewise
jarsigner -keystore src\client\keystore -storepass philemon .\target\client\commons-httpclient-3.0.jar typewise
jarsigner -keystore src\client\keystore -storepass philemon .\target\client\commons-logging-1.0.4.jar typewise
jarsigner -keystore src\client\keystore -storepass philemon .\target\client\philemon-typewise-1.0-rc97.jar typewise
jarsigner -keystore src\client\keystore -storepass philemon .\target\client\philemon-utils-1.0.1.jar typewise
jarsigner -keystore src\client\keystore -storepass philemon .\target\client\swt.jar typewise
jarsigner -keystore src\client\keystore -storepass philemon .\target\client\swt_awt.jar typewise
jarsigner -keystore src\client\keystore -storepass philemon .\target\client\swt_gdip.jar typewise
jarsigner -keystore src\client\keystore -storepass philemon .\target\client\swt_wgl.jar typewise
jarsigner -keystore src\client\keystore -storepass philemon .\target\client\swt_win32.jar typewise
jarsigner -keystore src\client\keystore -storepass philemon .\target\client\log4j-1.2.8.jar typewise
jarsigner -keystore src\client\keystore -storepass philemon .\target\client\log4j_properties.jar typewise
jarsigner -keystore src\client\keystore -storepass philemon .\target\client\geronimo-spec-servlet-2.4-rc2.jar typewise

xcopy /y src\client\typewise.jnlp .\target\client

xcopy /y D:\maven\repository\jnlp\jars\jnlp-1.5.0.jar .\target\client\test

xcopy /y src\client\debug.bat .\target\client\test