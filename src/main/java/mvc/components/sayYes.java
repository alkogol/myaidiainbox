package mvc.components;

import org.springframework.stereotype.Component;

/**
 * Created by anmi0217 on 25/7/2019.
 */

@Component
public class sayYes implements Sayer{
    @Override
    public String saySomething() {
        return "I Say Yes";
    }
}
