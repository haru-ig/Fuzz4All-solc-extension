pragma solidity ^0.8.0;
contract ChangeSemanticsUsingYulWithSemantics {
	uint32 private x;
        function change3 (address v) public {
        x = 4;
        x = 4;
        x = 4;
        x = bytes("hello");
        x = bytes("hello");
        x = x;
        x = x;
        x = x;
        x = x;
        x = x;
}
}
