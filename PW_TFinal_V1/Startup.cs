using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(PW_TFinal_V1.Startup))]
namespace PW_TFinal_V1
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
