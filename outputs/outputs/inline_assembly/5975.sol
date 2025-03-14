pragma solidity ^0.8.0;
contract SimpleInlineAssemblyExample {
    function main() public pure {
        int x = 10;
        assembly{ x := 20 }
    }
}
function main() public pure {

    int x = 10;
    assembly{



        x := x * 100
        x += 14
    }

}
