// SPDX-License-Identifier: UNLICENSED

pragma solidity 0.8.16;

contract Helper {
    function helper(
        uint256[] calldata indexs, 
        address[] calldata accounts, 
        uint96[] calldata amounts
    ) public pure returns(bytes32[] memory hashs, bytes[] memory nodes){
        uint256 len = indexs.length;
        if(len != accounts.length || len != amounts.length){
            revert("Length mismatch");
        }
        hashs = new bytes32[](len);
        nodes = new bytes[](len);
        for(uint256 i = 0; i < len; ++i){
            nodes[i] = abi.encodePacked(indexs[i], accounts[i], amounts[i]);
            hashs[i] = keccak256(nodes[i]);
        }
    }
}