pragma solidity ^0.8.0;
contract Modul{
        uint public s;
        constructor() public {}
        fallback() external {
            if(s < 3) { return; }
            s = s - 2;
        }
        function update() public { if(s < 3) { return; } s = s - 2; }
}
contract Main{
        function run(address[] memory _addresses) public returns (uint){
                Modul m;
                for(uint i = 0; i < _addresses.length; i++) {
                        (address(), assembly {
                                m.update()
                        });
                        (address(), assembly {
                                s := s - 1
                        });
                }
                return m.s;
        }
}
