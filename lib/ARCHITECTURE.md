# Arquitetura do Projeto - Fany's Price Table

## 📁 Estrutura de Pastas

```
lib/
├── core/                    # Funcionalidades centrais e compartilhadas
│   ├── constants/          # Constantes da aplicação
│   │   └── app_constants.dart
│   ├── services/           # Serviços globais
│   │   ├── api_service.dart
│   │   └── storage_service.dart
│   ├── utils/              # Utilitários e helpers
│   └── widgets/            # Widgets reutilizáveis
│       └── custom_button.dart
├── features/               # Módulos de funcionalidades
│   └── home/              # Feature Home
│       ├── bindings/      # Injeção de dependência
│       │   └── home_binding.dart
│       ├── controllers/   # Lógica de negócio
│       │   └── home_controller.dart
│       └── views/         # Interface do usuário
│           └── home_view.dart
├── shared/                # Recursos compartilhados entre features
│   ├── models/           # Modelos de dados
│   ├── services/         # Serviços compartilhados
│   └── widgets/          # Widgets compartilhados
├── routes/               # Configuração de rotas
│   └── app_pages.dart
└── main.dart            # Ponto de entrada da aplicação
```

## 🏗️ Padrões Arquiteturais

### 1. **GetX Architecture**
- **Controllers**: Gerenciam o estado e lógica de negócio
- **Views**: Interface do usuário (UI)
- **Bindings**: Injeção de dependência
- **Services**: Serviços globais e API

### 2. **Separation of Concerns**
- **Core**: Funcionalidades centrais e utilitários
- **Features**: Módulos independentes por funcionalidade
- **Shared**: Recursos compartilhados entre features

### 3. **Dependency Injection**
- Uso do GetX para injeção de dependência
- Bindings para configurar dependências por feature
- Services registrados globalmente

## 🔧 Bibliotecas Utilizadas

### **GetX** - Framework principal
- **Gerenciamento de Estado**: Reativo e performático
- **Roteamento**: Declarativo e type-safe
- **Injeção de Dependência**: Nativa e simples
- **Snackbars/Dialogs**: Utilitários de UI

### **Dio** - Cliente HTTP
- Interceptors para logs e autenticação
- Tratamento de erros centralizado
- Timeout configurável

### **GetStorage** - Armazenamento local
- Persistência de dados
- Chaves centralizadas em constantes
- Métodos específicos para dados do usuário

## 📋 Como Adicionar uma Nova Feature

1. **Criar estrutura de pastas**:
   ```
   lib/features/nova_feature/
   ├── bindings/
   ├── controllers/
   └── views/
   ```

2. **Criar Controller**:
   ```dart
   class NovaFeatureController extends GetxController {
     // Lógica de negócio
   }
   ```

3. **Criar Binding**:
   ```dart
   class NovaFeatureBinding extends Bindings {
     @override
     void dependencies() {
       Get.lazyPut<NovaFeatureController>(() => NovaFeatureController());
     }
   }
   ```

4. **Criar View**:
   ```dart
   class NovaFeatureView extends GetView<NovaFeatureController> {
     // Interface do usuário
   }
   ```

5. **Adicionar rota** em `app_pages.dart`

## 🎯 Vantagens desta Arquitetura

- ✅ **Modular**: Features independentes
- ✅ **Escalável**: Fácil adicionar novas funcionalidades
- ✅ **Testável**: Separação clara de responsabilidades
- ✅ **Reutilizável**: Componentes compartilhados
- ✅ **Performática**: GetX otimizado
- ✅ **Manutenível**: Código organizado e limpo

## 🚀 Próximos Passos

1. Adicionar mais features conforme necessário
2. Implementar autenticação
3. Adicionar testes unitários
4. Configurar CI/CD
5. Implementar temas e internacionalização
