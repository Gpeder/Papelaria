import android.os.Bundle
import androidx.activity.ComponentActivity
import androidx.activity.compose.setContent
import androidx.compose.foundation.Image
import androidx.compose.foundation.background
import androidx.compose.foundation.layout.*
import androidx.compose.material.*
import androidx.compose.runtime.Composable
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.graphics.painterResource
import androidx.compose.ui.text.input.KeyboardType
import androidx.compose.ui.text.style.TextAlign
import androidx.compose.ui.unit.dp
import androidx.compose.ui.unit.sp
import androidx.navigation.NavController
import androidx.navigation.compose.*
import com.app_loja.ui.theme.AppLojaTheme

object AppColors {
    val black = Color(0xFF000000)
    val white = Color(0xFFFFFFFF)
    val primary = Color(0xFF6200EE)
    val secondary = Color(0xFF03DAC5)
    val background = Color(0xFFF5F5F5)
}

object AppTextStyles {
    val Text10 = TextStyle(fontSize = 10.sp, color = AppColors.black)
    val Text12 = TextStyle(fontSize = 12.sp, color = AppColors.black)
    val Text16 = TextStyle(fontSize = 16.sp, color = AppColors.black)
    val Text20 = TextStyle(fontSize = 20.sp, color = AppColors.black)
    val Text30 = TextStyle(fontSize = 30.sp, color = AppColors.black)
}

class MainActivity : ComponentActivity() {
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContent {
            AppLojaTheme {
                MainScreen()
            }
        }
    }
}

@Composable
fun MainScreen() {
    val navController = rememberNavController()
    NavHost(navController, startDestination = "login") {
        composable("login") { LoginScreen(navController) }
        composable("root") { RootPage(navController) }
    }
}

@Composable
fun LoginScreen(navController: NavController) {
    Scaffold(
        backgroundColor = MaterialTheme.colors.background,
        content = {
            Column(
                modifier = Modifier.fillMaxSize(),
                horizontalAlignment = Alignment.CenterHorizontally,
                verticalArrangement = Arrangement.Center
            ) {
                Image(
                    painter = painterResource(id = R.drawable.logo),
                    contentDescription = null,
                    modifier = Modifier.size(250.dp)
                )
                Spacer(modifier = Modifier.height(16.dp))
                Button(onClick = { navController.navigate("root") }) {
                    Text("Entrar")
                }
            }
        }
    )
}

@Composable
fun RootPage(navController: NavController) {
    Scaffold(
        bottomBar = { CustomBottomBar { index -> /* Handle navigation */ } }
    ) {
        Column(modifier = Modifier.fillMaxSize()) {
            Text("Root Page")
        }
    }
}

@Composable
fun CustomBottomBar(onTap: (Int) -> Unit) {
    BottomNavigation {
        BottomNavigationItem(
            icon = { Icon(Icons.Default.Home, contentDescription = null) },
            label = { Text("Home") },
            selected = false,
            onClick = { onTap(0) }
        )
        BottomNavigationItem(
            icon = { Icon(Icons.Default.ShoppingBag, contentDescription = null) },
            label = { Text("Produtos") },
            selected = false,
            onClick = { onTap(1) }
        )
        BottomNavigationItem(
            icon = { Icon(Icons.Default.Person, contentDescription = null) },
            label = { Text("Perfil") },
            selected = false,
            onClick = { onTap(2) }
        )
    }
}

@Composable
fun CustomTextFormField(label: String, keyboardType: KeyboardType = KeyboardType.Text) {
    TextField(
        value = "",
        onValueChange = {},
        label = { Text(label) },
        keyboardOptions = KeyboardOptions(keyboardType = keyboardType),
        modifier = Modifier.fillMaxWidth()
    )
}

@Composable
fun Cform(navController: NavController) {
    Column(modifier = Modifier.padding(16.dp)) {
        CustomTextFormField(label = "Email", keyboardType = KeyboardType.Email)
        Spacer(modifier = Modifier.height(16.dp))
        CustomTextFormField(label = "Sua Senha", keyboardType = KeyboardType.Password)
        Spacer(modifier = Modifier.height(16.dp))
        Button(onClick = { navController.navigate("root") }) {
            Text("Entrar")
        }
        Spacer(modifier = Modifier.height(16.dp))
        Button(onClick = { /* Navigate to Cadastro */ }) {
            Text("Cadastrar")
        }
    }
}

@Composable
fun CustomAppBar(navController: NavController) {
    TopAppBar(
        title = { Text("AppBar") },
        actions = {
            IconButton(onClick = { navController.navigate("cart") }) {
                Icon(Icons.Default.ShoppingCart, contentDescription = null)
            }
        }
    )
}

@Composable
fun CartCard() {
    Row(
        modifier = Modifier.padding(8.dp),
        verticalAlignment = Alignment.CenterVertically
    ) {
        Image(painter = painterResource(id = R.drawable.product_image), contentDescription = null)
        Spacer(modifier = Modifier.width(10.dp))
        Column {
            Text("Nome do produto", style = AppTextStyles.Text20)
            Text("R\$ 10,00", style = AppTextStyles.Text12)
        }
        Spacer(modifier = Modifier.weight(1f))
        IconButton(onClick = { /* Handle delete */ }) {
            Icon(Icons.Default.Delete, contentDescription = null)
        }
    }
}

@Composable
fun PrymaryButton(onPressed: () -> Unit, text: String) {
    Button(onClick = onPressed) {
        Text(text)
    }
}

@Composable
fun BannerProduct() {
    Box(
        modifier = Modifier
            .height(100.dp)
            .fillMaxWidth()
            .background(Color.Red)
    ) {
        Text("Banner Product", textAlign = TextAlign.Center)
    }
}

@Preview(showBackground = true)
@Composable
fun DefaultPreview() {
    AppLojaTheme {
        MainScreen()
    }
}