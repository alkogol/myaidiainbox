package mvc.components;

import org.springframework.util.StringValueResolver;

/**
 * Created by anmi0217 on 25/7/2019.
 */
public class ViewResolverChecker implements StringValueResolver {
    @Override
    public String resolveStringValue(String s) {
        return s;
    }
}
