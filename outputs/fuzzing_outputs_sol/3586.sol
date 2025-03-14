pragma solidity ^0.8.0;
interface Fallback {
    function run(uint) external payable;
}
contract TestMutations {
    uint x;

    Fallback public a;
    MutateSemantic5WithCaller3 contract1 = MutateSemantic5WithCaller3(0xf86AEDaBC06A733427E80F479F58A99dEC2C95F7);

    MutateSemantic5WithCaller4 contract2 = MutateSemantic5WithCaller4(0x03BEE9F48510A02800B2035DA3262078A17407cD);
    MutateSemantic5WithCaller5 contract3 = MutateSemantic5WithCaller5(0xFD36C41132F945E529FCE1BDA87BB75F29812fFF);
    MutateSemantic6WithCallerA public contract4;

    constructor(uint256 _x) {
        x = _x;
    }

    function test(uint _a) public {
        require(_a >= 0);
        if (_a <= 5) {
            Fallback(address(this)).run(_a);
        }
        a.run(_a);
        contract2.test();
        contract3.test();
        contract4.test();
    }
}
