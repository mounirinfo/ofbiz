/*******************************************************************************
 * Licensed to the Apache Software Foundation (ASF) under one
 * or more contributor license agreements.  See the NOTICE file
 * distributed with this work for additional information
 * regarding copyright ownership.  The ASF licenses this file
 * to you under the Apache License, Version 2.0 (the
 * "License"); you may not use this file except in compliance
 * with the License.  You may obtain a copy of the License at
 *
 * http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing,
 * software distributed under the License is distributed on an
 * "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
 * KIND, either express or implied.  See the License for the
 * specific language governing permissions and limitations
 * under the License.
 *******************************************************************************/
package org.ofbiz.common;

import java.util.Map;

import javolution.util.FastMap;

public final class JsLanguageFilesMapping {

    public static class datejs {

        private static Map<String, String> localeFiles = FastMap.newInstance();
        private static String defaultDateJs = "/images/jquery/plugins/datejs/date-en-US.js";

        static {
            <#list datejs.keySet() as dateJsFiles>
            <#assign filePath = datejs.get(dateJsFiles) />
            localeFiles.put("${dateJsFiles}", "${filePath}");
            </#list>
        }

        public static String getFilePath(String locale) {
            if (datejs.localeFiles.get(locale) == null) {
                return datejs.defaultDateJs;
            }
            return datejs.localeFiles.get(locale);
        }

    }

    public static class jquery {
        private static Map<String, String> localeFiles = FastMap.newInstance();
        private static String defaultDateJs = "/images/jquery/ui/development-bundle/ui/i18n/jquery.ui.datepicker-en.js";

        static {
            <#list jquery.keySet() as jqueryFiles>
            <#assign filePath = jquery.get(jqueryFiles) />
            localeFiles.put("${jqueryFiles}", "${filePath}");
            </#list>
        }

        public static String getFilePath(String locale) {
            if (datejs.localeFiles.get(locale) == null) {
                return jquery.defaultDateJs;
            }
            return jquery.localeFiles.get(locale);
        }

    }

    public static class validation {
        private static Map<String, String> localeFiles = FastMap.newInstance();
        private static String defaultValidation = "/images/webapp/images/jquery/plugins/validate/localization/messages_en.js";

        static {
            <#list validation.keySet() as validationFiles>
            <#assign filePath = validation.get(validationFiles) />
            localeFiles.put("${validationFiles}", "${filePath}");
            </#list>
        }

        public static String getFilePath(String locale) {
            if (validation.localeFiles.get(locale) == null) {
                return validation.defaultValidation;
            }
            return validation.localeFiles.get(locale);
        }
    }

    public static class dateTime {
        private static Map<String, String> localeFiles = FastMap.newInstance();

        static {
            <#list dateTime.keySet() as dateTimeFiles>
            <#assign filePath = dateTime.get(dateTimeFiles)! />
            localeFiles.put("${dateTimeFiles}", "${filePath}");
            </#list>
        }

        public static String getFilePath(String locale) {
            if (dateTime.localeFiles.get(locale) == null) {
                return null;
            }
            return dateTime.localeFiles.get(locale);
        }
    }
}
