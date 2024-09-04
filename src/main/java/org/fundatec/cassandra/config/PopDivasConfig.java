package org.fundatec.cassandra.config;

import com.datastax.oss.driver.api.core.CqlSession;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

@Configuration
public class PopDivasConfig {

    @Bean
    public CqlSession cqlSession() {
        return CqlSession.builder()
                .withLocalDatacenter("datacenter1")
                .build();
    }
}
