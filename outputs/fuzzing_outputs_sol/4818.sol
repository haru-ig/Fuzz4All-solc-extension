pragma solidity ^0.8.0;
library MutateSemantically {
    struct StructWithBool {
        bool boolField;
    }
    function update(StructWithBool memory oldStruct, bool newBool) pure public {
        if (newBool) {
            StructWithBool memory _old = oldStruct;
            __MutateSemantically_check_for_bool_change_(__old, newBool, "");
        } else {
            oldStruct.boolField = newBool;
        }
    }
    function _MutateSemantically_check_for_bool_change_(
        StructWithBool storage old,
        bool newBool,
        bytes memory _callData
    ) internal pure {
        if (newBool!= old.boolField) {
            __MutateSemantically_checkForBoolChangeError_(_callData);
        }
    }
}
