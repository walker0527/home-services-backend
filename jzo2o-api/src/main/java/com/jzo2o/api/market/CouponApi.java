package com.jzo2o.api.market;

import com.jzo2o.api.market.dto.request.CouponUseReqDTO;
import com.jzo2o.api.market.dto.response.AvailableCouponsResDTO;
import com.jzo2o.api.market.dto.response.CouponUseResDTO;
import com.jzo2o.utils.MyQueryMapEncoder;
import org.springframework.cloud.openfeign.FeignClient;

import java.math.BigDecimal;
import java.util.List;

@FeignClient(contextId = "jzo2o-market", value = "jzo2o-market", path = "/market", configuration = MyQueryMapEncoder.class)
public interface CouponApi {

    List<AvailableCouponsResDTO> getAvailable(BigDecimal totalAmount);

    CouponUseResDTO use(CouponUseReqDTO couponUseReqDTO);
}
