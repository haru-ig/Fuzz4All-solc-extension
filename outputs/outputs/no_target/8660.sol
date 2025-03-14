pragma solidity ^0.8.0;
address oldABI_v2_contract;
OldABIv2 oldABI_v2 = OldABIv2(oldABI_v2_contract);
NewABIv2 newABI_v2 = NewABIv2();
address oldABI_v2_address = (oldABI_v2_contract);
NewABIv2 newABI_v2_address (newABI_v2_contract);
uint256 x = newABI_v2.f(oldABI_v2.f(0));
