___TERMS_OF_SERVICE___

By creating or modifying this file you agree to Google Tag Manager's Community
Template Gallery Developer Terms of Service available at
https://developers.google.com/tag-manager/gallery-tos (or such other URL as
Google may provide), as modified from time to time.


___INFO___

{
  "type": "MACRO",
  "id": "cvt_temp_public_id",
  "version": 1,
  "securityGroups": [],
  "displayName": "Multiple Inputs RegEx Table",
  "description": "This template is similar to a \u003ca href\u003d\"https://j.st/4VwZ\"\u003eRegEx Table\u003c/a\u003e, with the addition of being able to use multiple variables as input.",
  "containerContexts": [
    "WEB"
  ],
  "categories": [
    "UTILITY"
  ]
}


___TEMPLATE_PARAMETERS___

[
  {
    "type": "LABEL",
    "name": "info",
    "displayName": "This template is similar to a \u003ca href\u003d\"https://j.st/4VwZ\"\u003eRegEx Table\u003c/a\u003e, with the addition of being able to use multiple variables as input."
  },
  {
    "type": "SIMPLE_TABLE",
    "name": "inputsTable",
    "displayName": "Inputs Table",
    "simpleTableColumns": [
      {
        "defaultValue": "",
        "displayName": "Input Value",
        "name": "inputSource",
        "type": "TEXT"
      }
    ],
    "newRowButtonText": "Add Input",
    "help": "Individual \u003cem\u003eInput Values\u003c/em\u003e in the table below will be concatenated, and a regular expression match will be performed on each pattern in the \u003cem\u003eRegEx Table\u003c/em\u003e below. When a regular expression match is found, the corresponding \u003cem\u003eOutput value\u003c/em\u003e will be returned. \n\u003cbr/\u003e\u003cbr/\u003e\nPlease note the following:\n\u003cbr/\u003e- Values in the \u003cem\u003eInput Values\u003c/em\u003e table will be concatenated with a \"_\" by default; however, you can change this setting in the \u003cem\u003eAdvanced Settings\u003c/em\u003e.\n\u003cbr/\u003e- Regular expression pattern matching is evaluated from top to bottom; reorder these as needed.\n\u003cbr/\u003e- Input values may use \u003ca href\u003d\"https://support.google.com/tagmanager/topic/7683268?visit_id\u003d637556720797425891-3442928510\u0026amp;rd\u003d1#web\"\u003evariables\u003c/a\u003e such as \u003cstrong\u003e{{ Title }}\u003c/strong\u003e."
  },
  {
    "type": "SIMPLE_TABLE",
    "name": "regexTable",
    "displayName": "RegEx Table",
    "simpleTableColumns": [
      {
        "defaultValue": "",
        "displayName": "Pattern",
        "name": "pattern",
        "type": "TEXT"
      },
      {
        "defaultValue": "",
        "displayName": "Output",
        "name": "output",
        "type": "TEXT"
      }
    ],
    "newRowButtonText": "Add Pattern",
    "help": "The concatenation of the \u003cem\u003evalues\u003c/em\u003e in the \u003cem\u003eInputs Table\u003c/em\u003e above will be matched against each Pattern in the RegEx Table below, from top to bottom. When a match is found, the Output value from that row will be returned. \n\u003cbr/\u003e\u003cbr/\u003e\nEnter Patterns using \u003ca href\u003d\"https://support.google.com/tagmanager/answer/7679109?visit_id\u003d637556570796808874-755449532\u0026rd\u003d1\"\u003eRegular Expressions\u003c/a\u003e. By default, patterns must match the full input string and are case insensitive. This behavior can be adjusted in \u003cem\u003eAdvanced Settings\u003c/em\u003e."
  },
  {
    "type": "CHECKBOX",
    "name": "isDefaultValueChecked",
    "checkboxText": "Set Default Value",
    "simpleValueType": true,
    "help": "Explicitly set the value of this variable when no Patterns match.",
    "defaultValue": false
  },
  {
    "type": "TEXT",
    "name": "defaultValue",
    "displayName": "Default Value",
    "simpleValueType": true,
    "enablingConditions": [
      {
        "paramName": "isDefaultValueChecked",
        "paramValue": true,
        "type": "EQUALS"
      }
    ],
    "canBeEmptyString": true,
    "help": "To set the value to be an empty string, leave the field blank."
  },
  {
    "type": "GROUP",
    "name": "advanced",
    "displayName": "Advanced Settings",
    "groupStyle": "ZIPPY_CLOSED",
    "subParams": [
      {
        "type": "TEXT",
        "name": "concatenatingCharacter",
        "displayName": "Concatenating Character",
        "simpleValueType": true,
        "help": "The character that will be used to concatenate the input values, defaults to \"\u003ccode\u003e_\u003c/code\u003e\". For example, if there are two input values inside the \u003cem\u003eInputs Table\u003c/em\u003e, the first one being \u003cem\u003eFoo\u003c/em\u003e and the second one being \u003cem\u003eBar\u003c/em\u003e, the final input will be \u003cem\u003eFoo_Bar\u003c/em\u003e."
      },
      {
        "type": "CHECKBOX",
        "name": "ignoreCase",
        "checkboxText": "Ignore Case",
        "simpleValueType": true,
        "defaultValue": true
      },
      {
        "type": "CHECKBOX",
        "name": "fullMatchesOnly",
        "checkboxText": "Full Matches Only",
        "simpleValueType": true,
        "defaultValue": true,
        "help": "If enabled, patterns must match entire input. This is equivalent to having start (^) and end ($) anchors implicitly around your pattern. If disabled, patterns will match when they are found anywhere in the input. Disabling this option may cause unexpected behavior with the \u003cem\u003e\"Capture Groups and Replace Functionality\"\u003c/em\u003e."
      },
      {
        "type": "CHECKBOX",
        "name": "captureGroups",
        "checkboxText": "Enable Capture Groups and Replace Functionality",
        "simpleValueType": true,
        "defaultValue": true,
        "help": "If enabled, you can use \u003ca href\u003d\"https://262.ecma-international.org/5.1/#sec-15.5.4.11\"\u003edollar-sign replacement syntax\u003c/a\u003e to include portions of the input (e.g. from capturing groups in the matched pattern) within the output. Given the \u003ca href\u003d\"https://support.google.com/tagmanager/thread/49104943/google-tag-manager-custom-templates-and-regex-support?hl\u003den\"\u003elimited support for regular expressions in Google Tag Manager templates\u003c/a\u003e, only \u003cstrong\u003e$n\u003c/strong\u003e and \u003cstrong\u003e$\u0026\u003c/strong\u003e are supported. Additionally, only the first 5 capture groups are available. \n\u003cbr/\u003e\u003cbr/\u003e\nPlease note the following:\n\u003cbr/\u003e- Using this option with \u003cem\u003e\"Full Matches Only\"\u003c/em\u003e disabled may result in unexpected behavior (i.e. returning the entire input value with the matched portion replaced).  \n\u003cbr/\u003e- Using this option with \u003cem\u003e\"Ignore Case\"\u003c/em\u003e enabled, the returned value from the group capture will be in lowercase."
      }
    ]
  }
]


___SANDBOXED_JS_FOR_WEB_TEMPLATE___

// APIs
//const log = require('logToConsole');
const getType = require('getType');


// Inputs
const config = {
  // inputs, patterns
  inputsTable: data.inputsTable || [],
  concatenatingCharacter: data.concatenatingCharacter || '_',
  regexTable: data.regexTable || [],
  // default values
  isDefaultValueChecked: data.isDefaultValueChecked || false,
  defaultValue: data.defaultValue || '',
  // advanced
  ignoreCase: data.ignoreCase || false,
  fullMatch: data.fullMatch || false,
  captureGroups: data.captureGroups || false
};


// Logic
const input = config.inputsTable.map(item => {
  return getType(item.inputSource) == 'undefined' ? null : item.inputSource;
}).filter(el => el)
  .map(el => config.ignoreCase ? el.toLowerCase() : el)
  .join(config.concatenatingCharacter);

const results = config.regexTable.filter(row => {
  const regex = config.ignoreCase ? row.pattern.toLowerCase() : row.pattern;
  
  if (config.fullMatch) {
    return input.match(regex) && input.match(regex)[0] === input;
  }
  
  return input.match(regex);
});


// Return value
if (results.length === 0) {
  return getDefaultValue(config.isDefaultValueChecked, config.defaultValue);
} else if (config.captureGroups) {
  return doRegexReplacements(results[0]);
}

return results[0].output;


// Functions
function getDefaultValue(isDefaultValueChecked, defaultValue) {
  if (isDefaultValueChecked) {
    return defaultValue;
  }
  
  return undefined;
}

function doRegexReplacements(result) {
  let output = result.output;
  const pattern = config.ignoreCase ? result.pattern.toLowerCase() : result.pattern;
  const inputMatch = input.match(pattern);

  // matchAll/replaceALl are not supported!, so we need to use while :(
  // also, limited support: https://j.st/4VwL
  [1, 2, 3, 4, 5].map((index) => {
    // check if we need to replace any $n and if capture group exists in input
    while (output.match("\\$" + index) && typeof inputMatch[index] !== "undefined") {
      output = output.replace("$" + index, inputMatch[index]);
    }
  });

  while (output.match("\\$\\&")) {
    output = output.replace("$&", inputMatch[0]);
  }
  
  return output;
}


___TESTS___

scenarios:
- name: Test Capture Groups
  code: |-
    const regexTable = [
      {
        pattern: 'My_(.*?)_My_(.*)',
        output: 'Testing! $2 $1 $2 $3 $& $&',
      },
      {
        pattern: 'My_(.*?)_My_(.*)',
        output: 'Second Testing, to make sure we return the first one',
      }
    ];

    let mockData = {
      inputsTable: inputsTable,
      regexTable: regexTable,
      ignoreCase: false,
      captureGroups: true
    };

    // Call runCode to run the template's code.
    let variableResult = runCode(mockData);

    assertThat(variableResult).isEqualTo('Testing! Bar Foo Bar $3 My_Foo_My_Bar My_Foo_My_Bar');
- name: Test Capture Groups, ignore Case
  code: |-
    const regexTable = [
      {
        pattern: 'my_(.*?)_My_(.*)',
        output: 'Testing! $2 $1 $2 $3 $& $&',
      },
      {
        pattern: 'my_(.*?)_My_(.*)',
        output: 'Second Testing, to make sure we return the first one',
      }
    ];

    let mockData = {
      inputsTable: inputsTable,
      regexTable: regexTable,
      ignoreCase: true,
      captureGroups: true
    };

    // Call runCode to run the template's code.
    let variableResult = runCode(mockData);

    assertThat(variableResult).isEqualTo('Testing! bar foo bar $3 my_foo_my_bar my_foo_my_bar');
- name: Test without Capture Groups
  code: "const regexTable = [\n  {\n    pattern: 'my_(.*?)_My_(.*)',\n    output:\
    \ 'Testing! $2 $1 $2 $3 $& $&',\n  },\n  {\n    pattern: 'my_(.*?)_My_(.*)',\n\
    \    output: 'Second Testing, to make sure we return the first one',\n  }\n];\n\
    \nlet mockData = {\n  inputsTable: inputsTable,\n  regexTable: regexTable,\n \
    \ ignoreCase: true,  \n  captureGroups: false\n};\n\n// Call runCode to run the\
    \ template's code.\nlet variableResult = runCode(mockData);\n\nassertThat(variableResult).isEqualTo('Testing!\
    \ $2 $1 $2 $3 $& $&');"
- name: Test with Diff Concatenating Character
  code: |-
    const regexTable = [
      {
        pattern: 'My_(.*?)-My_(.*)',
        output: 'Testing! $2 $1 $&',
      }
    ];

    let mockData = {
      inputsTable: inputsTable,
      regexTable: regexTable,
      ignoreCase: false,
      captureGroups: true,
      concatenatingCharacter: '-'
    };

    // Call runCode to run the template's code.
    let variableResult = runCode(mockData);

    assertThat(variableResult).isEqualTo('Testing! Bar Foo My_Foo-My_Bar');
- name: Test Full Match set to False
  code: |-
    const regexTable = [
      {
        pattern: 'Foo',
        output: 'Testing $&',
      }
    ];

    let mockData = {
      inputsTable: inputsTable,
      regexTable: regexTable,
      ignoreCase: false,
      captureGroups: true,
      fullMatch: false
    };

    // Call runCode to run the template's code.
    let variableResult = runCode(mockData);

    assertThat(variableResult).isEqualTo('Testing Foo');
- name: Test Full Match set to True
  code: |-
    const regexTable = [
      {
        pattern: 'Foo',
        output: 'Testing $&',
      }
    ];

    let mockData = {
      inputsTable: inputsTable,
      regexTable: regexTable,
      ignoreCase: false,
      captureGroups: true,
      fullMatch: true
    };

    // Call runCode to run the template's code.
    let variableResult = runCode(mockData);

    assertThat(variableResult).isEqualTo(undefined);
- name: Test Default Value
  code: "const regexTable = [\n  {\n    pattern: 'Foo',\n    output: 'Testing $&',\n\
    \  }\n];\n\nlet mockData = {\n  inputsTable: inputsTable,\n  regexTable: regexTable,\n\
    \  ignoreCase: false,\n  captureGroups: true,\n  fullMatch: true,\n  isDefaultValueChecked:\
    \ true,\n  defaultValue: 'Def Value'  \n};\n\n// Call runCode to run the template's\
    \ code.\nlet variableResult = runCode(mockData);\n\nassertThat(variableResult).isEqualTo('Def\
    \ Value');"
setup: |-
  const inputsTable = [
    {
      inputSource: "My_Foo"
    },
    {
      inputSource: "My_Bar"
    },
    {
      inputSource: undefined
    }
  ];


___NOTES___

Created on 5/8/2021, 12:35:44 PM


