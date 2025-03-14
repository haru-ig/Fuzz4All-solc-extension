pragma solidity ^0.8.0;
contract SimpleInlineAssemblyExample {
    function main() public {
        assembly {
            let t := 1000000000000000
            sett(t)
        }
    }
}
