pragma solidity ^0.8.0;
interface G {
        function change(uint c) external;
}
contract C {
        G public g;
     function change(uint c) external {
             c=c;
     }
     function change (uint c) external {
             g.change(c);
     }
}
contract C2{
 address public b;
 }
contract C3{
        mapping(address=>G) public g;
        C2 public c2;
     function change(uint c) external {
             if (b.call.value(Address.zero) (c)) {
                g[b].change(c);
             }
     }
}
