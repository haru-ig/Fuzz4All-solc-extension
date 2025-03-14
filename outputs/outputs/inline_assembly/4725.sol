pragma solidity ^0.8.0;
contract mutator88 {
    address[0][] public addresses;
    uint256 public g;
    uint256 public c;
    uint256 private p;
    constructor()
    {
        uint256[] memory ciphs = new uint256[](5);
         ciphs[0]=1;
         ciphs[1]=2;
         ciphs[2]=4;
         ciphs[3]=8;
         ciphs[4]=16 ;
         uint256[] memory sips = new uint256[](5);
         sips[0]=0;
         sips[1]=1;
         sips[2]=3;
         sips[3]=7;
         sips[4]=15 ;
        g = ciphs[4];
        Ciph[16] memory new_p = calculate(ciphs, ciphs, sips);
        p = new_p.p;
        addresses;
        }

    assembly
    {
        mstore(memory, g)
    }

    function calculate(uint256[] memory _biphs, uint256[] memory _ciphs, uint256[] memory _siphs) returns(Ciph[16])
    {
        uint256 len = 5;
        uint256[] memory cis = [] ;
        for (uint256 i=0; i < len; i++) {
            cis.push(_biphs[i] % ciphs[i]) ;
        }
        Ciph storage cc = storage [ uint256(_ciphs[4]) ] ;
        for (uint256 i=0; i < len; i++) {
            cc = cc*cis[i] + sips[i];
        }

        return cc;
    }
}
