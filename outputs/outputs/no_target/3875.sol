pragma solidity ^0.8.0;
interface G {
        function change(uint s, uint c) external;
}
contract C {
        G public g;
     function change (uint s, uint c) external {
             g.change(s, c);
     }
}
