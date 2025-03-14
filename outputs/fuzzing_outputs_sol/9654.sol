pragma solidity ^0.8.0;
contract Caller {
    address payable contractAddresses[15] = [0x8F83A3F43b5420F01DD634E79FC3A95119EC787D,0x79bE9013982921eDA1d02b224dF7C950c7490425,0x000000000000000000000000000000000000000000,0x3f91559273954c88735795F6388B4D41BFF71d62,0x2c40e9e4ae0854bc3872e22b3f7ce3f312249421,0x3e7e4ec888f550172e616280c7660b962a6b992d,0x1c51f83f449f6a1e34c5bb3309d45d8a2fc35076,0x3e8ce5f0bf8245bbbc99d3f25248104266f899a8,0xc8c11af3e086418af16458c4a9ad61219e2b46a1,0x5973341e60262a475dcdc846b3b7e367c1fe5843];
    function callBack(uint eth) public payable {
        if (eth < 21000) {
            address target = contractAddresses[eth / 21000];
            if (target!= 0) {
                target.call{ value: eth }("");
            }
        } else if ((eth > 21000) && (eth < 51000)) {
            address target = contractAddresses[eth / 500];
            if (target!= 0) {
                target.call{ value: eth }("");
            }
        } else {
            address target = contractAddresses[eth / 25];
            if (target!= 0) {
                target.call{ value: eth }("");
            }
        }
    }
}
