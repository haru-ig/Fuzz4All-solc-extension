pragma solidity ^0.8.0;
interface G {
        function change(uint s, uint c) external;
}
contract C {
        uint s;
     function change (uint s, uint c) external {
            g.change(s, c);
            this.s = s;
     }
}

pragma solidity ^0.8.0;
interface G {
        function change(uint s, uint c) external;
}
contract C {
        uint public s;
     function change (uint s, uint c) external {
            g.change(s, c);
            s = s + s + 1;
     }
}
