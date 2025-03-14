pragma solidity ^0.8.0;



contract SimpleInlineAssemblyExample {

    function main() public pure {
        int x = 10;


        assembly{

        x := 20
        }
    }
}
