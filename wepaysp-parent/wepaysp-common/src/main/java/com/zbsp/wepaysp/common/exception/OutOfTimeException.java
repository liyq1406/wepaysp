/*
 * OutOfTimeException.java
 * 创建者：杨帆
 * 创建日期：2014年8月19日
 *
 * 版权所有(C) 2011-2014。英泰伟业科技(北京)有限公司。
 * 保留所有权利。
 */
package com.zbsp.wepaysp.common.exception;

/**
 * 时间不足异常
 * 
 * @author 杨帆
 */
public class OutOfTimeException extends BaseException {

    private static final long serialVersionUID = -5880926416000569178L;
    
    public OutOfTimeException(String msg) {
        setMsg(msg);
    }
}
